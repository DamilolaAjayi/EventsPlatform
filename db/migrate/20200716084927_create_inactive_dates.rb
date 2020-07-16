class CreateInactiveDates < ActiveRecord::Migration[6.0]
  def change
    create_table :inactive_dates do |t|
      t.datetime :date
      t.integer :event_id
      t.timestamps
    end
  end
end
