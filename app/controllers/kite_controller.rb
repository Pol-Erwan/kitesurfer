class KiteController < ApplicationController
  def index
    @articles = Article.all
    @article = Article.find_by(domain: "testkite")
    @products = Product.all
    @technics = Technic.all
    @options = Option.all
    @wave = 0
    @bigair = 0
    @freeride = 0
    @freestyle = 0
    @maniability = 0
    @feeling = 0
  end

  def show
    @products = Product.all
    @technics = Technic.all
    @options = Option.all
    @product = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)
    @wave = 0
    @bigair = 0
    @freeride = 0
    @freestyle = 0
    @maniability = 0
    @feeling = 0
    @grip = 0
  end

  def create
    @product = Product.find(params[:id])
    @compare = Compare.create(product: @product, user: current_user)
    if @compare.save
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @compare = Compare.find(params[:id])
    @compare.delete

      flash[:sucess] = "Le kite a bien été supprimé !"

      redirect_to user_path(current_user)
  end

end
