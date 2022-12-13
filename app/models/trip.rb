class Trip < ApplicationRecord
  has_many :trip_users
  has_many :users, through: :trip_users, validate: false
  has_many :schedules

  with_options presence: true do
    validates:item_name
    validates:first_day
    validates:last_day
    end
    
 
    
end
