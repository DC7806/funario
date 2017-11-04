class AuthorsController < ApplicationController
  def index
    @authors = Author.all.order(created_at: :desc)
  end
end