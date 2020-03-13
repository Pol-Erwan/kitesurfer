class Product < ApplicationRecord
  has_one :technic
  has_one :option

  has_one_attached :background
  has_one_attached :idcard
  has_one_attached :profil
  has_one_attached :competence
  has_many_attached :detail
  has_many_attached :picture

  has_many :compares
  has_many :users, through: :compares
end
