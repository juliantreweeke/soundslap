class CreateSoundsTags < ActiveRecord::Migration[5.0]
  def change
    create_table :sounds_tags do |t|
      t.integer :sound_id
      t.integer :tag_id
    end
  end
end
