class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.integer :user_id
      t.string :image

      t.timestamps null: false
    end
  end
end
