class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.integer :id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
