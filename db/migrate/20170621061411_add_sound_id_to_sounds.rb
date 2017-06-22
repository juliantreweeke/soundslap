class AddSoundIdToSounds < ActiveRecord::Migration[5.0]
  def change
    add_column :sounds, :sound_id, :integer
  end
end
