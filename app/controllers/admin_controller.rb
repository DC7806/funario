class AdminController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @articles = Article.all
  end
end