class CreateUploadsActions < ActiveRecord::Migration
  def change
    create_table :uploads_actions do |t|
      t.belongs_to :user, null: false
      t.belongs_to :upload, null: false
      t.belongs_to :action, null: false
      t.timestamps null: false
    end
  end
end
