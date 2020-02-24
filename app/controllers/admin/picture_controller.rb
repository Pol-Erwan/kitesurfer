class Admin::PictureController < Admin::BasesController
  def create
    @product = Product.find(params[:kite_id])
    @product.picture.attach(params[:picture])
    redirect_to(edit_admin_kite_path(@product))

  end
end
