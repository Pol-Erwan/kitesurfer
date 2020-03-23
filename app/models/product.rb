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

  def self.search(search)
    if search
      product_type = Product.find_by(name: search)
        if product_type
	  self.where(id: product_type)
	else
	end
    else
    end
  end

end
