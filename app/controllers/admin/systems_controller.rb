class Admin::SystemsController < AdminController
  
  before_action :find_system

  def edit
  end
  
  def update
    if @system.update(system_params)
      redirect_to edit_admin_system_path(@system)
      flash[:notice] = 'System Updated'
    else
      render :edit
    end
  end

  private
  def find_system
    @system = Admin::System.find(1)
  end
  def system_params
    params.require(:admin_system).permit(:logo, :gtm_id, :ga_id, :fb_pixel,:facebook_id, :css_version)
  end
end
