class AddEmailUniquenessIndex < ActiveRecord::Migration
  def up
	add_index :hosts, :email, :unique => true
	add_index :guests, :email, :unique => true
  end

  def down
	remove_index :hosts, :email
	remove_index :guests, :email
  end
end
