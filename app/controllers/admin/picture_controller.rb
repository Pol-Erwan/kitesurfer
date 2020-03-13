class Admin::PictureController < Admin::BasesController

  def create
    @product = Product.find(params[:product_id])
    if params[:carousel] != nil
      @product.picture.attach(params[:carousel],params[:carousel2],params[:carousel3],params[:carousel4],params[:carousel5],params[:carousel6],params[:carousel7])
    end
    if params[:background] != nil
      @product.background.attach(params[:background])
    end	 
    if params[:idcard] != nil   
      @product.idcard.attach(params[:idcard])
    end
    if params[:profil] != nil
    @product.profil.attach(params[:profil])
    end
    if params[:competence] != nil
    @product.competence.attach(params[:competence])
    end
    if params[:detail] != nil
    @product.detail.attach(params[:detail],params[:detail2],params[:detail3])
    end
      flash[:success] = " Photos ajoutées !"
    redirect_to(edit_admin_product_path(@product), anchor: "picture")

  end

  def destroy
    @product = Product.find(params[:id])
    @product.picture.purge
    @product.background.purge
    @product.idcard.purge
    @product.profil.purge
    @product.competence.purge
    @product.detail.purge
      flash[:success] = " La/les photo(s) ont bien été supprimées !"
    redirect_to edit_admin_product_path(anchor: "picture")

  end

end
