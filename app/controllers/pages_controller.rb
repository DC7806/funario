class PagesController < ApplicationController
  def index
    @title = Metum.find(1).title
    @seo = {description: Metum.find(1).meta_description}
    @og = {
            type:             "website",
            url:              request.url,
            description:      Metum.find(1).meta_description,
            image:            Metum.find(1).og_image.url
          }
  end
end
