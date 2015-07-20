class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title, null: false, default: ""
      t.string :catch_copy
      t.text   :concept

      t.timestamps null: false
    end
  end
end
