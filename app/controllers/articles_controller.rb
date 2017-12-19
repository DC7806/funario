class ArticlesController < ApplicationController
  before_action :find_article, only: :show
  layout 'layouts/article', only: :show
  
  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag]) 
    elsif params[:month]
      ## by_month -- class method ##
      @articles = Article.by_month(params[:month])
    else
      @articles = Article.all.order(created_at: :desc)
    end
    @title = Metum.where(page_name: :articles)[0].title
    @seo = {description: Metum.where(page_name: :articles)[0].meta_description}
    @og = {
            type:             "website",
            url:              request.url,
            description:      Metum.where(page_name: :articles)[0].meta_description,
            image:            Metum.where(page_name: :articles)[0].og_image.url
          }
    @pins = Pin.first
  end

  def show
    @title = @article.title
    @seo = {
            description:      @article.meta_description ,
            keyword:          @article.title
            }
    @og = {
            type:             "article",
            url:              request.url,
            description:      @article.meta_description,
            image:            @article.image.url
            }
    @carousels = @article.carousels
    # @pin = Pin.first
  end

  private
  def find_article
    @article = Article.find_by(permalink: params[:id])
    if @article.blank?
      redirect_to articles_path
      flash[:notice] = "Page Not Found"
    end
  end
  # @seo = {
  #     meta: {
  #       description: tr(@post, :summary),
  #       author: @post.author.try(:name)
  #     },
  #     google: {
  #       name: tr(@post, :title),
  #       description: tr(@post, :summary),
  #       image: @post.image_url,
  #       item_type: :Article
  #     },
  #     og: {
  #       title: tr(@post, :title),
  #       url: post_url(@post),
  #       type: :website,
  #       description: tr(@post, :summary),
  #       image: @post.image_url,
  #       :"image:width" => @post.image_width,
  #       :"image:height" => @post.image_height
  #     }
  #   }

end
