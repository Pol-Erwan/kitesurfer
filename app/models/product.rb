class Product < ApplicationRecord
  has_one :technic
  has_one :option
  has_many_attached :picture
  has_one_attached :avatar
end
