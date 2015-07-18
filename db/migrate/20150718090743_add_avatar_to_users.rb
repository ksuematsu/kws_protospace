class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string, after: :works
  end
end
