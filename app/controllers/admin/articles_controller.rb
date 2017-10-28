class Admin::ArticlesController < AdminController
  before_action :find_article, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    @admin_articles = Admin::Article.all.order(created_at: :desc).page(params[:page]).per(3)
  end

  def new
    @admin_article = Admin::Article.new
  end

  def create
    @admin_article = Admin::Article.new(admin_article_params)
    if @admin_article.save
      redirect_to admin_articles_path
    else
      render :new
    end
  end

  def edit

  end

  def update
     if @admin_article.update(admin_article_params)
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
  def admin_article_params
    params.require(:admin_article).permit(:title, :description, :meta_description, :permalink, :image, :cover_image_alt,:content)
  end
  def find_article
    @admin_article = Admin::Article.find_by(id: params[:id])
  end
end
