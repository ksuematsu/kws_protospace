class AddUserIdToPrototypes < ActiveRecord::Migration
  def change
    add_column :prototypes, :user_id, :integer, after: :id
  end
end
