class CarouselsController < ApplicationController
  before_action :find_carousel

  def destroy
    @carousel.destroy if @carousel
    # not applicable for other models using carousels
    redirect_back(fallback_location: edit_admin_article_path)
    flash[:notice] = "Image Deleted"
  end


  private
  def find_carousel
    @carousel = Carousel.find(params[:id])
  end
end
