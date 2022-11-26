class DepartmentCategory < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '総務部' },
    { id: 2, name: '経理部' },
    { id: 3, name: '企画部' },
    { id: 4, name: '法務部' },
    { id: 5, name: '広報部' },
    { id: 6, name: 'IT部' },
    { id: 7, name: '第一事業部' },
    { id: 8, name: '第二事業部' },
    { id: 9, name: '第三事業部' },
    { id: 10, name: '第四事業部' },
    { id: 11, name: '第五事業部' },
    { id: 12, name: '第六事業部' }
  ]
  include ActiveHash::Associations
  has_many :users

  end