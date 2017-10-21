class ArticlesController < ApplicationController
  layout 'article'
  def index
    @articles = Admin::Article.all 
  end
  def show
    @article = Admin::Article.find_by(permalink: params[:id])
  end
end
