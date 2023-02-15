class Schedule < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  belongs_to :trip_user, dependent: :destroy
  has_one_attached :image

  with_options presence: true do
    validates:schedule_date
    validates:start_time
    validates:ending_time
    validates:plan
    end
    
end
