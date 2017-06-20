class AddPlaysToSounds < ActiveRecord::Migration[5.0]
  def change
    add_column :sounds, :plays, :integer
  end
end
