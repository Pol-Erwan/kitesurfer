class Admin::UsersController < Admin::BasesController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
			@user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
			if @user.save

        flash[:success] = "L'utilisateur a bien été créé !"
        redirect_to admin_users_path
      else
        render :new
      end
	end

	def edit
			@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
      if @user.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
				if params[:avatar] == nil
          flash[:success] = "L'utilisateur a bien été modifié !"
          redirect_to admin_users_path
        else
          @user.avatar.attach(params[:avatar])
          flash[:success] = "L'utilisateur a bien été modifié !"
          redirect_to admin_users_path
        end
      else
        render :edit
      end
	end

	def destroy
      @user = User.find(params[:id])

      	@user.delete

	flash[:success] = "L'utilisateur a bien été supprimé !"

      redirect_to admin_users_path
    end
end
