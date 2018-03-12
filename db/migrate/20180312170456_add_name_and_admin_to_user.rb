class AddNameAndAdminToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :fn, :string
    add_column :users, :lname, :string
    add_column :users, :admin, :boolean
  end
end
