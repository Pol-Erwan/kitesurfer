class FoilController < ApplicationController
  def index
    @article = Article.find_by(domain: "testfoil")
    @users = User.all
    @products = Product.all
    @technics = Technic.all
    @options = Option.all
    @product = Product.find_by(category:"foil")
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)
    @wave = 0
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
    @wave = 0
    @freeride = 0
    @freestyle = 0
    @maniability = 0
    @feeling = 0
  end

  def create
    @product = Product.find(params[:id])
    @compares = Compare.all
    @compare = Compare.new(product_id: @product.id, same: true)
    
    @compare.user = current_user

    if @compare.save
      flash[:success] = "ok"
    redirect_to kite_path(@product, anchor: "idcard")
    end
  end 

  def destroy
    @compare = Compare.find(params[:id])
    @compare.delete

      flash[:success] = " Le foil a bien été supprimé !"

      redirect_to user_path(current_user, anchor:"compare")
  end
end
