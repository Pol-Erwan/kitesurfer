class PictureController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @product.picture.attach(params[:picture])
    redirect_to(kite_path(@product))
  end
end
