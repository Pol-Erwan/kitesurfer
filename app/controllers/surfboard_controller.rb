class SurfboardController < ApplicationController

  def index
    @article = Article.find_by(domain: "testsurf")
    @users = User.all
    @products = Product.where(category:"surfboard")
    @product = Product.where(category:"surfboard", year:"2020")
    @technics = Technic.where(product_id: @product.ids)
    @options = Option.where(product_id: @product.ids)
    @technic = Technic.find_by(product_id: @product.ids)
    @variable = 0
  end

  def show
    @products = Product.all
    @technics = Technic.all
    @options = Option.all
    @compares = Compare.all
    @product = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)
    @compare = Compare.where(product_id: @product.id)
    @variable = 0
  end

  def create
    @product = Product.find(params[:id])
    @compares = Compare.all
    @compare = Compare.new(product_id: @product.id, same: true)
    
    @compare.user = current_user

    if @compare.save
      flash[:success] = "Ajouter dans ton comparateur"
    redirect_to surfboard_path(@product, anchor: "idcard")
    end
  end 

  def destroy
    @compare = Compare.find(params[:id])
    @compare.delete

      flash[:success] = " Le surf a bien été supprimé !"

      redirect_to user_path(current_user, anchor:"compare")
  end
end
