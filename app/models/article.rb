class Article < ApplicationRecord
  belongs_to :user
  has_many_attached :image
  has_one_attached :background
  has_many_attached :jumbotron
end
