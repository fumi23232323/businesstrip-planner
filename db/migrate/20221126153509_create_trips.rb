class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|

   t.string  :item_name,     null: false
   t.date  :first_day,     null: false
   t.date  :last_day,      null: false
   t.timestamps
    end
  end
end
