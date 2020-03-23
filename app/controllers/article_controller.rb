class ArticleController < ApplicationController

  def index
    @articles = Article.where(domain: "news")
    @events = Article.where(domain: "event")
    @portfolios = Article.where(domain: "portfolio")
    @tests = Article.find_by(domain: "test")
    @article = Article.where(domain: "news").last(7)
    @news = @articles.last(4).reverse
    @products = Product.last(6)
    @all = Product.all && Article.all
    @search = @all.search(params[:search])
  end

  def show
    @article = Article.find(params[:id])
    @users = User.all
    @news = Article.where(domain: "news").last(7).reverse
    @size = 1
    @name = ["","background","jumbotron","intro","intro 2","id card","competences","bonus"]
  end

  private

    def search_params
      params.require(:search).permit(:name, :article_id, :search)
    end

end
