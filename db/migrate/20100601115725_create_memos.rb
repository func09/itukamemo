class CreateMemos < ActiveRecord::Migration
  def self.up
    create_table :memos do |t|
      t.integer :user_id, :null => false
      t.string :message, :null => false
      t.boolean :delivered, :default => false
      t.datetime :next_remind_at
      t.timestamps
    end
    add_index :memos, [:user_id]
  end

  def self.down
    drop_table :memos
  end
end
