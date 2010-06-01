class Memo < ActiveRecord::Base

  # リマインドの間隔
  FREQUENCIES = {
    :auto => { :label => 'AUTO', :frequency => nil },
    :one_week => { :label => '1WEEK', :frequency => 1.week },
    :two_weeks => { :label => '2WEEKS', :frequency => 2.weeks },
    :one_month => { :label => '1MONTH', :frequency => 1.month },
    :three_months => { :label => '3MONTHS', :frequency => 3.months },
    :six_months => { :label => '6MONTHS', :frequency => 6.months },
    :one_year => { :label => '1YEAR', :frequency => 1.year },
  }
  
  belongs_to :user
  validates_presence_of :user_id
  validates_presence_of :message

  # リマインド予約日時が過ぎたレコードを検索
  named_scope :nexts,
              :conditions => ['delivered = ? AND next_remind_at < ?', false, Time.now],
              :order => 'next_remind_at'

  # リマインドを通知する
  def remind!
    logger.info "メモを（#{self.id}）リマインドします"
    # twitterで通知
    # self.user.
    # self.destory
    logger.info "メモを（#{self.id}）リマインドしました"
  end

  # リマインド日時を計算する
  def calculate_next_remind_at(frequency = :auto)
    frequency, random_time = frequency.to_sym, nil
    if frequency == :auto
      random_time = rand(100.days)
    else
      freq = FREQUENCIES[frequency]
      min = freq[:frequency] * 0.40
      max = freq[:frequency] * 1.1
      random_time = min + rand(max-min)
    end
    return random_time.from_now
  end
  
end


# == Schema Information
#
# Table name: memos
#
#  id             :integer         not null, primary key
#  user_id        :integer         not null
#  message        :string(255)     not null
#  delivered      :boolean         default(FALSE)
#  next_remind_at :datetime
#  created_at     :datetime
#  updated_at     :datetime
#

