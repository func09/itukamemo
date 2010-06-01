require 'spec_helper'

describe Memo do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Memo.create!(@valid_attributes)
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

