class CreateCommentsSounds < ActiveRecord::Migration[5.0]
  def change
    create_table :comments_sounds do |t|
      t.integer :comment_id
      t.integer :sound_id
    end
  end
end
