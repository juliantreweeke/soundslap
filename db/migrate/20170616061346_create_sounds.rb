class CreateSounds < ActiveRecord::Migration[5.0]
  def change
    create_table :sounds do |t|
      t.text :sound
      t.text :title
      t.text :description
      t.text :image
      

      t.timestamps
    end
  end
end
