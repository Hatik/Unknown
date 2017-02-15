class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.belongs_to :user, null: false
      t.string :title, null: false
      t.string :image_path, null: false
      t.belongs_to :category, null:false
      t.boolean :show_flag
      t.float :rating, null: false, default: 0
      t.timestamps null: false
    end
  end
end
