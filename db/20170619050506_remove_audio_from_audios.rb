class RemoveAudioFromAudios < ActiveRecord::Migration[5.0]
  def change
    remove_column :audios, :audio
  end
end
