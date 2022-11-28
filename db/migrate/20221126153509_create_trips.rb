class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|

   t.string  :item_name,     null: false
   t.string  :first_day,     null: false
   t.integer :last_day,      null: false
   t.integer :member_1_id
   t.integer :member_2_id
   t.string  :member_3_id
   t.string  :member_4_id
   t.string  :member_5_id

      t.timestamps
    end
  end
end
