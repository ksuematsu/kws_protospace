class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :main_image, null: false
      t.string :sub_image_1
      t.string :sub_image_2
      t.string :sub_image_3

      t.timestamps null: false
    end
  end
end
