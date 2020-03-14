class SurfboardController < ApplicationController

  def index
    @article = Article.find_by(domain: "testsurf")
    @users = User.all
    @products = Product.all
    @technics = Technic.all
    @options = Option.all
    @product = Product.find_by(category:"surfboard")
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)
    @strap = 0
    @courbes = 0
    @wind = 0
    @sideshore = 0
    @onshore = 0
    @wave = 0
    @freestyle = 0
    @strapless = 0
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
    @strap = 0
    @courbes = 0
    @wind = 0
    @sideshore = 0
    @onshore = 0
    @wave = 0
    @freestyle = 0
    @strapless = 0
  end

  def create
    @product = Product.find(params[:id])
    @compares = Compare.all
    @compare = Compare.new(product_id: @product.id, same: true)
    
    @compare.user = current_user

    if @compare.save
      flash[:success] = "Ajouter dans ton comparateur"
    redirect_to board_path(@product, anchor: "idcard")
    end
  end 

  def destroy
    @compare = Compare.find(params[:id])
    @compare.delete

      flash[:success] = " Le surf a bien été supprimé !"

      redirect_to user_path(current_user, anchor:"compare")
  end
end
