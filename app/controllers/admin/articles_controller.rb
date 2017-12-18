class Admin::ArticlesController < AdminController
  before_action :find_article, only: [:edit, :update, :destroy]
  
  def index
    if params[:query] #pg_search
      @admin_articles = Article.search(params[:query]).order(created_at: :desc).page(params[:page]).per(3)
    elsif params[:date_range] # input name=date_range[date_from], how does it pick up?
      @search = DateRangeSearch.new(params[:date_range])
      @admin_articles = @search.scope.order(created_at: :desc).page(params[:page]).per(3)
    else
      @admin_articles = Article.all.order(created_at: :desc).page(params[:page]).per(3)
    end
  end

  def new
    @admin_article = Admin::Article.new
    @admin_carousel = @admin_article.carousels.build
  end

  def create
    @admin_article = Admin::Article.new(article_params)
    if @admin_article.save
      redirect_to admin_articles_path
      flash[:notice] = 'New Article Created'
    else
      render :new
    end
  end

  def edit
    @admin_carousels = @admin_article.carousels.order(:sort).all
  end

  def update
    if @admin_article.update_attributes(article_params)
      redirect_to admin_articles_path
      flash[:notice] = 'Article Updated'
    else
      render :edit
    end
  end

  def destroy
    @admin_article.destroy if @admin_article
    redirect_to admin_articles_path
    flash[:notice] = 'Article Deleted'
  end

  private
  def article_params
    params.require(:admin_article).permit(:title, :author, :custom_author, :description, :meta_description,
                                          :permalink, :image, :cover_image_alt, :content, :tag_list, {slide_images: []},
                                          {carousels_attributes: [:id, :image, :_destroy]})
  end
  def find_article
    @admin_article = Admin::Article.find_by(id: params[:id])  
  end
end