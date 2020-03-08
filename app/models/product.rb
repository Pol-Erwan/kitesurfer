class Product < ApplicationRecord
  has_one :technic
  has_one :option
  has_many_attached :picture
  has_many :compares
  has_many :users, through: :compares
end
