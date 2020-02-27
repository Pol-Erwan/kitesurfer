class SurfboardController < ApplicationController

  def index
    @products = Product.all
    @technics = Technic.all
    @options = Option.all
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
    @product = Product.find(params[:id])
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

end
