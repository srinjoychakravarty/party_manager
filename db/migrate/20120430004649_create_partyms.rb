class CreatePartyms < ActiveRecord::Migration
  def change
    create_table :partyms do |t|
      t.integer :id
      t.integer :host_id
      t.string :name
      t.date :date
      t.string :location
      t.time :start_time
      t.time :end_time
      t.string :description
      t.date :rsvp_date

      t.timestamps
    end
  end
end
