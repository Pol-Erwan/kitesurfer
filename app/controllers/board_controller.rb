class BoardController < ApplicationController

  def index
    @products = Product.all
    @technics = Technic.all
    @options = Option.all
    @control = 0
    @progression = 0
    @freeride = 0
    @freestyle = 0
    @maniability = 0  
  end

  def show
    @product = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @product.id)
    @option = Option.find_by(product_id: @product.id)
    @control = 0
    @progression = 0
    @freeride = 0
    @freestyle = 0
    @maniability = 0  
  end

end
