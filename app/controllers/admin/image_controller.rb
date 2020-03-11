class Admin::ImageController < Admin::BasesController
  def create
    @article = Article.find(params[:article_id])
    @article.image.attach(params[:image])
      flash[:success] = " Photo ajoutée !"
    redirect_to edit_admin_article_path(@article, anchor:"image")

  end

  def destroy
    @article = Article.find(params[:id])
    @article.image.last.purge
      flash[:success] = " La photo a bien été supprimée !"
    redirect_to edit_admin_article_path(@article, anchor:"image")

  end
end
