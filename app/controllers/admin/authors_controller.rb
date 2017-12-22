class Admin::AuthorsController < AdminController
  before_action :find_author, only: [:edit, :update, :destroy]

  def index
    @admin_authors = Admin::Author.all.order(created_at: :desc)
  end

  def new
    @admin_author = Admin::Author.new
  end

  def create
    @admin_author = Admin::Author.new(author_params)
    if @admin_author.save
      redirect_to admin_authors_path
      flash[:notice] = "New Author Created"
    else
      flash[:alert] = "Something Went Wrong: "
      render :new
    end
  end

  def edit

  end

  def update
     if @admin_author.update(author_params)
      redirect_to admin_authors_path
      flash[:notice] = "Author Updated"
    else
      flash[:alert] = "Something Went Wrong: "
      render :edit
    end
  end

  def destroy
    @admin_author.destroy if @admin_author
    redirect_to admin_authors_path
    flash[:notice] = "Article Deleted"
  end


  private
  def author_params
    params.require(:admin_author).permit(:name, :nickname, :summary)
  end
  def find_author
    @admin_author = Admin::Author.find_by(id: params[:id])
  end
end