class Product < ApplicationRecord
  has_one :technic
  has_one :option
end
