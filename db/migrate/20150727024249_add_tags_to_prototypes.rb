class AddTagsToPrototypes < ActiveRecord::Migration
  def change
    add_column :prototypes, :web_design,  :string, after: :concept
    add_column :prototypes, :ui,          :string, after: :web_design
    add_column :prototypes, :application, :string, after: :ui
  end
end
