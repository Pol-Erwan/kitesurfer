class UserController < ApplicationController

  def show
    @user = User.find(params[:id])
    @products = Product.all
    @compares = Compare.all
    @compare = Compare.find_by(user_id: @user.id)
    @technics = Technic.all
    @options = Option.all
    @wave = 0
    @bigair = 0
    @freeride = 0
    @freestyle = 0
    @maniability = 0
    @feeling = 0
  end

end
