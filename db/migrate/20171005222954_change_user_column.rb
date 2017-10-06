class ChangeUserColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :haikus, :user_id, :reference, index: true
  end
end
