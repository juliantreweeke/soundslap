class DropCommentsSounds < ActiveRecord::Migration[5.0]
  def change
    drop_table :comments_sounds
  end
end
