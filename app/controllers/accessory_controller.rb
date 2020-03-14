class AccessoryController < ApplicationController

  def index
    @article = Article.find_by(domain: "testaccessory")
    @users = User.all
    @products = Product.all
    @technics = Technic.all
    @options = Option.all
    @product = Product.find_by(category: "accessory")
    @technic = Technic.find_by(product_id: @product.id)
    @pads = 0
    @strap = 0
    @flex = 0
  end

  def show
    @products = Product.all
    @product = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)
    @pad = 0
    @strap = 0
    @flex = 0
    @grip = 0
  end

  def create
    @product = Product.find(params[:id])
    @compares = Compare.all
    @compare = Compare.new(product_id: @product.id, same: true)
    
    @compare.user = current_user

    if @compare.save
      flash[:success] = "Ajouter dans ton comparateur"
    redirect_to accessory_path(@product, anchor: "idcard")
    end
  end 

  def destroy
    @compare = Compare.find(params[:id])
    @compare.delete

      flash[:success] = " L'accessoire a été supprimé !"

      redirect_to user_path(current_user, anchor:"compare")
  end
end
