class CreateCommentsReplies < ActiveRecord::Migration
  def change
    create_table :comments_replies do |t|
      t.integer :parent_comment_id, index: true, foreign_key_column_for: :comments, null: false
      t.integer :reply_comment_id, index: true, foreign_key_column_for: :comments, null: false
      t.timestamps null: false
    end
  end
end
