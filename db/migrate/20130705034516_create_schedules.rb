class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :day
      t.time :time_begin
      t.time :time_end
      t.references :classroom

      t.timestamps
    end
    add_index :schedules, :classroom_id
  end
end
