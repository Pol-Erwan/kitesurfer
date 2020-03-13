class Admin::ImageController < Admin::BasesController

  def create
    @article = Article.find(params[:article_id])
    if params[:image] != nil
      @article.image.attach(params[:image],params[:image2],params[:image3],params[:image4],params[:image5],params[:image6],params[:image7])
    end
    if params[:background] != nil
      @article.background.attach(params[:background])
    end	 
    if params[:jumbotron] != nil
      @article.jumbotron.attach(params[:jumbotron],params[:jumbotron2],params[:jumbotron3],params[:jumbotron4])
    end
      flash[:success] = " Photos ajoutées !"
    redirect_to edit_admin_article_path(@article, anchor:"image")

  end

  def destroy
    @article = Article.find(params[:id])
    @article.image.purge
    @article.background.purge
    @article.jumbotron.purge
      flash[:success] = " La photo a bien été supprimée !"
    redirect_to edit_admin_article_path(@article, anchor:"image")

  end
end
