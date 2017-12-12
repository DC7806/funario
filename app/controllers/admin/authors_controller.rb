class Admin::AuthorsController < AdminController
  before_action :find_author, only: [:edit, :update, :destroy]

  def index
    @authors = Author.all.order(created_at: :desc)
  end

  def new
    @author = Admin::Author.new
  end

  def create
    @author = Admin::Author.new(author_params)
    if @author.save
      redirect_to admin_authors_path
      flash[:notice] = 'New Author Created'
    else
      render :new
    end
  end

  def edit

  end

  def update
     if @author.update(author_params)
      redirect_to admin_authors_path
      flash[:notice] = 'Author Updated'
    else
      render :edit
    end
  end

  def destroy
    @author.destroy if @author
    redirect_to admin_authors_path
    flash[:notice] = 'Article Deleted'
  end


  private
  def author_params
    params.require(:admin_author).permit(:name, :nickname, :summary)
  end
  def find_author
    @author = Admin::Author.find_by(id: params[:id])
  end
end