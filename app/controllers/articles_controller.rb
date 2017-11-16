class ArticlesController < ApplicationController
  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag]) 
    else
      @articles = Article.all.order(created_at: :desc)
    end
    @title = Metum.find(3).title
    @seo = {description: Metum.find(3).meta_description}
    @og = {
            type:             "website",
            url:              request.url,
            description:      Metum.find(3).meta_description,
            image:            Metum.find(3).og_image.url
          }
  end
  def show
    @article = Article.find_by(permalink: params[:id])
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
