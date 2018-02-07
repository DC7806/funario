class Admin::PinsController < AdminController
  before_action :find_pin, only: :update

  def index
    @admin_pins = Admin::Pin.all
  end

  def update
    if @admin_pin.update(pin_params)
      redirect_to admin_pins_path
      flash[:notice] = 'Pin Updated'
    else
      render :edit
    end
  end

  private
  def find_pin
    @admin_pin = Admin::Pin.find_by(id: params[:id])
  end
  def pin_params
    params.require(:admin_pin).permit(:month, :image, :order)
  end
  # def pin_params
  #   params.fetch(:admin_pin, {}).permit(:all_results, :jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec)
  # end
end
