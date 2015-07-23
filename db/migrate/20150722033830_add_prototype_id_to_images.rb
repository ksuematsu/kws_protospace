class AddPrototypeIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :prototype_id, :integer, after: :id
  end
end
