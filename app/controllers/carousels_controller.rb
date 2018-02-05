class CarouselsController < ApplicationController
  before_action :find_carousel

  def destroy
    @carousel.destroy if @carousel
    # redirect back
    redirect_back(fallback_location: request.referrer)
    flash[:notice] = "Image Deleted"
  end

  private
  def find_carousel
    @carousel = Carousel.find_by(id: params[:id])
  end
end
