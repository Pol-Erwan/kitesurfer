class Article < ApplicationRecord
  belongs_to :user
  has_many_attached :image
  has_one_attached :background
  has_many_attached :jumbotron

  def self.search(search)
    if search
      article_type = Article.find_by(title: search)
        if article_type
	  self.where(id: article_type)
	else
	end
    else
    end
  end

end
