class PagesController < ApplicationController
  def index
    @title = Metum.find_page("home").title
    @seo = {description: Metum.find_page("home").meta_description}
    @og = {
            title:            Metum.find_page("home").title,
            type:             "website",
            url:              request.url,
            description:      Metum.find_page("home").meta_description,
            image:            root_url + Metum.find_page("home").og_image.url
          }
    @sliders = Slider.order(:sort)
  end
end