class AddUserIdToSounds < ActiveRecord::Migration[5.0]
  def change
    add_column :sounds, :user_id, :integer
  end
end
