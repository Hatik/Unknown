class CreateCommentsActions < ActiveRecord::Migration
  def change
    create_table :comments_actions do |t|
      t.belongs_to :user, null: false
      t.belongs_to :comment, null: false
      t.belongs_to :action, null: false
      t.timestamps null: false
    end
  end
end
