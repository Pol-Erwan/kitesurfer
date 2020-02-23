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
    @board = Product.find(params[:id])
    @technic = Technic.find(params[:id])
    @option = Option.find(params[:id])
    @control = 0
    @progression = 0
    @freeride = 0
    @freestyle = 0
    @maniability = 0  
  end

end
