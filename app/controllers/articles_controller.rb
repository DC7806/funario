class ArticlesController < ApplicationController
  layout 'article'
  def index
    @articles = Admin::Article.all
    @title = 'default'
  end
  def show
    @article = Admin::Article.find_by(permalink: params[:id])
    @title = @article.title
    @seo = {description: @article.meta_description ,
            keyword:     @article.title }
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
