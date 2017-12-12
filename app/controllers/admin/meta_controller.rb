class Admin::MetaController < AdminController

  before_action :find_metum, only: [:edit, :update]

  def index
    @meta = Admin::Metum.all.order(created_at: :asc)
  end

  def edit
  end

  def update
    if @metum.update(metum_params)
      redirect_to admin_meta_path
      flash[:notice] = 'Meta Updated'
    else
      render :edit
    end
  end

  private

  def find_metum
    @metum = Admin::Metum.find_by(id: params[:id])
  end

  def metum_params
    params.require(:admin_metum).permit(:title, :meta_description, :og_image)
  end

end
