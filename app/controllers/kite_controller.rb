class KiteController < ApplicationController
  def index
    @article = Article.find_by(domain: "testkite")
    @users = User.all
    @products = Product.where(category: "kite")
    @technics = Technic.where(product_id: @products.ids)
    @options = Option.where(product_id: @products.ids)
    @product = Product.find_by(category: "kite")
    @technic = Technic.find_by(product_id: @product.id)
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
    @compares = Compare.all
    @product = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)
    @compare = Compare.find_by(product_id: @product.id)
    @kite =  Product.where(category: "kite")
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
    @compares = Compare.all
    @compare = Compare.new(product_id: @product.id, same: true)
    
    @compare.user = current_user

    if @compare.save
      flash[:success] = "Ajouter dans ton comparateur"
    redirect_to kite_path(@product, anchor: "idcard")
    end
  end 

  def destroy
    @compare = Compare.find(params[:id])
    @compare.delete

      flash[:success] = " Le kite a bien été supprimé !"

      redirect_to user_path(current_user, anchor:"compare")
  end

end
