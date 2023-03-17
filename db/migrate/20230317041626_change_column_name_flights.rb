class ChangeColumnNameFlights < ActiveRecord::Migration[7.0]
  def change
    change_table :flights do |t|
      t.remove :start_timne
      t.column :start_time, :datetime
    end
  end
end
