class AddUserToHaiku < ActiveRecord::Migration[5.1]
  def change
    add_column :haikus, :user_id, :integer

    Haiku.all.each do |haiku|
      user = User.find_by(email: haiku.user_email)
      if user.nil?
        user = User.create(email: haiku.user_email,
                           name: "No Name")
      end
      haiku.update(user_id: user.id)
    end

    remove_column :haikus, :user_email
  end
end
