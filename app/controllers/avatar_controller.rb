class AvatarController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.avatar.attach(params[:avatar])
      flash[:success] = "Photo de profil ajouté"
    redirect_to(user_path(@user))
  end

end
