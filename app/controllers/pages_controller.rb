class PagesController < ApplicationController
  def index
    seo = Metum.where(page_name: :home)[0]
    @title = seo.title
    @seo = {description: seo.meta_description}
    @og = {
            title:            seo.title,
            type:             "website",
            url:              request.url,
            description:      seo.meta_description,
            image:            root_url + seo.og_image.url
          }
    @sliders = Slider.order(:sort).all
  end
end