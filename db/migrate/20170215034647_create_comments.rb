class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :upload
      t.string :note, null: false
      t.integer :parent_id, index: true, foreign_key_column_for: :comments
      t.timestamps null: false
    end
  end
end
