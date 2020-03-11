class Admin::ProductController < Admin::BasesController

  def index
    @products = Product.all
  end

  def create
    @product = Product.find(params[:kite_id])
    @product.picture.attach(params[:picture])
    redirect_to(edit_admin_kite_path(@product))
  end

  def edit
    @product = Product.find(params[:id])
    @size = 1
    @name = ["","profil","detail 1","detail 2","detail 3","id card","competence","carousel 1","carousel 2","carousel 3","carousel 4","carousel 5","carousel 6","carousel 7"]
  end

  def destroy
    @product = Product.find(params[:id])
    @product.picture.last.purge

    redirect_to edit_admin_kite_path(anchor: "picture")

  end

end
