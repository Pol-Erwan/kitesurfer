class Admin::UserController < Admin::BasesController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], function: params[:function], description: params[:description], password: params[:password])
    if @user.save
      flash[:success] = " L'utilisateur a bien été créé !"
      redirect_to admin_user_index_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], function: params[:function], description: params[:description])
      if params[:avatar] == nil
        flash[:success] = " L'utilisateur a bien été modifié !"
        redirect_to admin_user_index_path
      else
        @user.avatar.attach(params[:avatar])
        flash[:success] = " L'utilisateur a bien été modifié !"
        redirect_to admin_user_index_path
      end
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @article = Article.where(user_id: @user.id)
    @compare = Compare.where(user_id: @user.id)
    if @user = current_user
      flash[:warning] = "Tu ne peux pas supprimé le profil en cours"
    else
      if @article != nil || @compare != nil
        @article.destroy_all
        @compare.destroy_all
        @user.delete
        flash[:success] = " L'utilisateur a bien été supprimé !"
      end
    end
    redirect_to admin_user_index_path
    end
end
