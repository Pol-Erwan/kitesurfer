class UserController < ApplicationController

  def show
    @user = User.find(params[:id])
    @products = Product.all
    @compares = Compare.all
    @compare = Compare.where(user_id: @user.id)
    @technics = Technic.all
    @options = Option.all
    @variable = 0
  end

end
