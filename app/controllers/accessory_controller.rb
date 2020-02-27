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
    @product = Product.find(params[:id])
    @technic = Technic.find(product_id: @product.id)
    @option = Option.find(product_id: @product.id)
    @pads = 0
    @strap = 0
    @flex = 0
  end

end
