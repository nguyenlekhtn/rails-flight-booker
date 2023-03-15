class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.belongs_to :departure_airport, reference: { to_table: :airports }
      t.belongs_to :arrival_airport, reference: { to_table: :airports }
      t.datetime :start_timne
      t.integer :duration
      t.timestamps
    end
  end
end
