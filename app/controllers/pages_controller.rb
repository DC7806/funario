class PagesController < ApplicationController
  def index
    @title = Metum.where(page_name: :home)[0].title
    @seo = {description: Metum.where(page_name: :home)[0].meta_description}
    @og = {
            type:             "website",
            url:              request.url,
            description:      Metum.where(page_name: :home)[0].meta_description,
            image:            Metum.where(page_name: :home)[0].og_image.url
          }
    @sliders = Slider.order(:sort).all
  end
end