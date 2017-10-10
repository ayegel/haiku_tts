class CreateHaikus < ActiveRecord::Migration[5.1]
  def change
    create_table :haikus do |t|
      t.string :title
      t.text :poem
      t.string :user_email

      t.timestamps #updated_at  #created_at
    end
  end
end