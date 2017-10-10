class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :vote

      t.references :user, index: true
      t.references :haiku, index: true
      t.timestamps
    end
  end
end
