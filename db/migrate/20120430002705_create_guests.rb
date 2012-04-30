class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :id
      t.integer :party_id
      t.string :name
      t.string :email
      t.string :invite_code
      t.integer :expected_attendees
      t.integer :actual_attendees

      t.timestamps
    end
  end
end
