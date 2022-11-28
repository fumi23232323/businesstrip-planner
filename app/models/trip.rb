class Trip < ApplicationRecord
  belongs_to :user
  has_many :trip_users
  has_many :users, through: :trip_users

  with_options presence: true do
    validates:item_name
    validates:first_day
    validates:last_day
    validates:member_1_id
    end
    
    with_options numericality: { other_than: 0 } do
      validates :member_1_id
      validates :member_2_id
      validates :member_3_id
      validates :member_4_id
      validates :member_5_id
    end
    
end
