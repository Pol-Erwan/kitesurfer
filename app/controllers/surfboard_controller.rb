class SurfboardController < ApplicationController

  def index
    @products = Product.all
    @technics = Technic.all
    @options = Option.all
    @courbes = 0
    @wind = 0
    @sideshore = 0
    @onshore = 0
    @wave = 0
    @freestyle = 0
    @straps = 0
    @strapless = 0
  end

  def show
    @surfboard = Product.find(params[:id])
    @technic = Technic.find(params[:id])
    @option = Option.find(params[:id])
    @courbes = 0
    @wind = 0
    @sideshore = 0
    @onshore = 0
    @wave = 0
    @freestyle = 0
    @straps = 0
    @strapless = 0
  end

end
