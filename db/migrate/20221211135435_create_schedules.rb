class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date    :schedule_date, null: false
      t.time    :start_time,    null: false
      t.time    :ending_time,   null: false
      t.text    :plan,          null: false
      t.string  :place  
      t.string  :url_link     
      t.integer :icon      
      t.timestamps
    end
  end
end
