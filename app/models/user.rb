class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :department_category
  belongs_to :position_category
  #空の投稿を保存できないようにする
  validates :email, :encrypted_password, :personnel_number, :department_category_id, :position_category_id, :last_name,:first_name, presence: true

  #部署の選択が「---」の時は保存できないようにする
  validates :department_category_id, numericality: { other_than: 1, message: "can't be blank" } 
end
