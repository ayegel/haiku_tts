class ChangeUserColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :haikus, :user_id
    add_reference :haikus, :user, index: true
    add_foreign_key :haikus, :users
  end
end
