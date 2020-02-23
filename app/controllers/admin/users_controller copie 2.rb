class Admin::UsersController < Admin::BasesController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
			@user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], is_admin: params[:is_admin], password: params[:password])
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
      if @user.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], is_admin: params[:is_admin])
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
			@booking = Booking.where(user_id: @user.id)
			@order = Order.where(booking_id: @booking.ids)
			if @order != nil
				@order.destroy_all
				@booking.destroy_all
      	@user.delete
			end

			flash[:success] = "L'utilisateur a bien été supprimé !"

      redirect_to admin_users_path
    end
end
