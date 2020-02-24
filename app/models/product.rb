class Product < ApplicationRecord
  has_one :technic
  has_one :option
  has_many_attached :picture
end
