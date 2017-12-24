class Admin::SlidersController < AdminController
  before_action :find_slide, only: [:edit, :update, :destroy]

  def index
    @admin_sliders = Admin::Slider.order(:sort).all
  end

  def new
    @admin_slider = Admin::Slider.new
  end

  def create
    @admin_slider = Admin::Slider.new(slide_params)
    if @admin_slider.save
      redirect_to admin_sliders_path
      flash[:notice] = 'New Slider Created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @admin_slider.update(slide_params)
      redirect_to admin_sliders_path
      flash[:notice] = 'Slider Updated'
    else
      render :edit
    end
  end

  def destroy
    @admin_slider.destroy if @admin_slider
    redirect_to admin_sliders_path
    flash[:notice] = 'Slider Deleted'
  end

  private
  def find_slide
    @admin_slider = Admin::Slider.find_by(id: params[:id])
  end
  def slide_params
    params.require(:admin_slider).permit(:image, :title, :url, :slider_index, :sort)
  end
end
