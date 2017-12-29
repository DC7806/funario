class Admin::SystemsController < AdminController
  
  before_action :find_system

  def edit
  end
  
  def update
    if @admin_system.update(system_params)
      redirect_to edit_admin_system_path(@system)
      flash[:notice] = "System Updated"
    else
      flash[:alert] = "Something Went Wrong: "
      render :edit
    end
  end

  private
  def find_system
    @admin_system = Admin::System.first
  end
  def system_params
    params.require(:admin_system).permit(:site_name, :logo, :gtm_id, :ga_id, :fb_pixel,:facebook_id, :css_version)
  end
end
