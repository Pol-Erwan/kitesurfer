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

  end

  def destroy
    @product = Product.find(params[:id])
    @product.picture.last.purge

    redirect_to edit_admin_kite_path(anchor: "picture")

  end

end
