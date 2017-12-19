class Admin::PinsController < AdminController
  before_action :find_pin

  def edit
  end

  def update
    if @admin_pin.update(pin_params)
      redirect_to edit_admin_pin_path
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
    params.fetch(:admin_pin, {}).permit(:all_results, :jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec)
  end

end
