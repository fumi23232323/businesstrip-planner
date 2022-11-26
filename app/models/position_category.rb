class PositionCategory < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'Assistant' },
    { id: 2, name: 'Staff' },
    { id: 3, name: 'Assistant_manager' },
    { id: 4, name: 'Manager' },
    { id: 5, name: 'Associate_partner' },
    { id: 6, name: 'Partner'},
    { id: 7, name: 'Expert' },
    { id: 8, name: '事務担当' },
    { id: 9, name: '部長' },
    { id: 10, name: '次長' },
    { id: 11, name: '秘書' },
  ]
  include ActiveHash::Associations
  has_many :users

  end