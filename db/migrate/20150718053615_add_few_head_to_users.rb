class AddFewHeadToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string, after: :id
    add_column :users, :member_of, :string, after: :email
    add_column :users, :profile, :text, after: :member_of
    add_column :users, :works, :text, after: :profile
  end
end
