class ArticleController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @users = User.all
    @size = 1
    @name = ["","background","jumbotron","intro","intro 2","id card","competences","bonus"]
  end

end
