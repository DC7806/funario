class Admin::ArticlesController < AdminController
  before_action :find_article, only: [:edit, :update, :destroy]
  
  def index
    @admin_articles = Article.all.order(created_at: :desc).page(params[:page]).per(3)
  end

  def new
    @admin_article = Admin::Article.new
  end

  def create
    @admin_article = Admin::Article.new(article_params)
    if @admin_article.save
      redirect_to admin_articles_path
    else
      render :new
    end
  end

  def edit

  end

  def update
     if @admin_article.update(article_params)
      redirect_to admin_articles_path
    else
      render :edit
    end
  end

  def destroy
    @admin_article.destroy if @admin_article
    redirect_to admin_articles_path
  end


  private
  def article_params
    params.require(:admin_article).permit(:title, :author, :description, :meta_description, :permalink, :image, :cover_image_alt, :content, :tag_list)
  end
  def find_article
    @admin_article = Admin::Article.find_by(id: params[:id])  
  end
end
