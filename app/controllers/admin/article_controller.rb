class Admin::ArticleController < Admin::BasesController

  def index
    @articles = Article.all
    @users = User.all
  end

  def new
    @article = Article.new
  end

  def create
      @article = Article.new(title: params[:title], intro: params[:intro], title2: params[:title2],domain: params[:domain], description: params[:description], youtube: params[:youtube], link: params[:link],title3: params[:title3],title4: params[:title4],title5: params[:title5],title6: params[:title6],title7: params[:title7],title8: params[:title8],title9: params[:title9],content: params[:content],content2: params[:content2],content3: params[:content3],content4: params[:content4],content5: params[:content5],content6: params[:content6],content7: params[:content7],content8: params[:content8],content9: params[:content9] )

      @article.user = current_user

      if @article.save
        flash[:success] = " L'article a bien été ajouté !"
        redirect_to admin_article_index_path
      else
        render :new
      end
  end

  def edit
    @article = Article.find(params[:id])
    @size = 1
    @name = ["","intro","panorama","ride","competence","id card","competences","bonus"]

  end

  def update
    @article= Article.find(params[:id])

    if @article.update(title: params[:title], intro: params[:intro], title2: params[:title2], description: params[:description], youtube: params[:youtube], link: params[:link],title3: params[:title3],title4: params[:title4],title5: params[:title5],title6: params[:title6],title7: params[:title7],title8: params[:title8],title9: params[:title9],content: params[:content],content2: params[:content2],content3: params[:content3],content4: params[:content4],content5: params[:content5],content6: params[:content6],content7: params[:content7],content8: params[:content8],content9: params[:content9],domain: @article.domain)
      flash[:success] = " L'article a bien été modifié !"
        redirect_to admin_article_index_path
      else
        render :edit
    end
  end


  def destroy
    @article = Article.find(params[:id])
    @article.delete

      flash[:success] = " L'article a bien été supprimé !"

      redirect_to admin_article_index_path
  end

end
