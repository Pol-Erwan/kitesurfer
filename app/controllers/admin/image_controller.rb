class Admin::ImageController < Admin::BasesController
  def create
    @article = Article.find(params[:article_id])
    @article.image.attach(params[:image])
    redirect_to edit_admin_article_path(@article)

  end

  def destroy
    @article = Article.find(params[:id])
    @article.image.last.purge

    redirect_to article_path(@article)

  end
end
