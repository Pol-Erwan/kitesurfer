class UserController < ApplicationController

  def show
    @user = User.find(params[:id])
    @products = Product.all
    @compares = Compare.all
    @compare = Compare.where(user_id: @user.id)
    @technics = Technic.all
    @options = Option.all
    @wave = 0
    @bigair = 0
    @freeride = 0
    @freestyle = 0
    @maniability = 0
    @feeling = 0
    @control = 0
    @progression = 0
    @courbes = 0
    @wind = 0
    @sideshore = 0
    @onshore = 0
    @sideshore = 0
    @strap = 0
    @strapless = 0
  end

end
