class Admin::SlidersController < AdminController
  before_action :find_slide, only: [:edit, :update, :destroy]

  def index
    @admin_sliders = Admin::Slider.all
  end

  def new
    @admin_slider = Admin::Slider.new
  end

  def create
    @admin_slider = Admin::Slider.new(slide_params)
    if @admin_slider.save
      redirect_to admin_sliders_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @admin_slider.update(slide_params)
      redirect_to admin_sliders_path
    else
      render :edit
    end
  end

  def destroy
    @admin_slider.destroy if @admin_slider
    redirect_to admin_root_path
  end

  private
  def find_slide
    @slide = Admin::Slider.find(id: params[:id])
  end
  def slide_params
    params.require(:admin_slider).permit(:image, :title, :url)
  end
end
