class Admin::PictureController < Admin::BasesController

  def create
    @product = Product.find(params[:product_id])
    @product.picture.attach(params[:picture])
    redirect_to(edit_admin_product_path(@product), anchor: "picture")

  end

  def destroy
    @product = Product.find(params[:id])
    @product.picture.last.purge

    redirect_to edit_admin_product_path(anchor: "picture")

  end

end
