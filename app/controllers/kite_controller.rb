class KiteController < ApplicationController
  def index
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
    @kite = Product.find(params[:id])
    @technic = Technic.find_by(product_id: @kite.id)
    @option = Option.find_by(product_id: @kite.id)
    @wave = 0
    @bigair = 0
    @freeride = 0
    @freestyle = 0
    @maniability = 0
    @feeling = 0
  end

end
