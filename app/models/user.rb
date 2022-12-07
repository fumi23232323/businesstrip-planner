class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :trip_users
  has_many :trips, through: :trip_users

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :department_category
  belongs_to :position_category

  with_options presence: true do

  #空の投稿を保存できないようにする
  validates:personnel_number, format: { with: /\A\d{9}\z/ }
  validates:department_category_id, numericality: { other_than: 1, message: "can't be blank" } #所属「の選択が「---」の時は保存できないようにする
  validates:position_category_id, numericality: { other_than: 1, message: "can't be blank" } #役職「の選択が「---」の時は保存できないようにする
  validates:name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }


  end

   # 半角英数字混合
   PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze  
   validates_format_of :password, with: PASSWORD_REGEX, message: 'Include both letters and numbers in half-width characters'
end
