class CreateAudios < ActiveRecord::Migration[5.0]
  def change
    create_table :audios do |t|
      t.string :image
      t.string :name
      t.string :audio
      t.has_attached_file :audio

      t.timestamps
    end
  end
end
