class AddUserName < ActiveRecord::Migration
  def up
  	add_column :spree_users, :username, :string
  end

  def down
  end
end
