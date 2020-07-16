class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.text :details
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
