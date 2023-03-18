class ChangeColumnStartTimeFlights < ActiveRecord::Migration[7.0]
  def change
    change_table :flights do |t|
      t.remove :start_time, type: :datetime
      t.column :date, :date
    end
  end
end
