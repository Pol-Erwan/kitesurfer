class AccessoryController < ApplicationController

  def index
    @products = Product.all
    @technics = Technic.all
    @options = Option.all
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

end
