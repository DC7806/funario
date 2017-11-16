class AuthorsController < ApplicationController
  def index
    @authors = Author.all.order(created_at: :desc)
    @title = Metum.find(4).title
    @seo = {description: Metum.find(4).meta_description}
    @og = {
            type:             "website",
            url:              request.url,
            description:      Metum.find(4).meta_description,
            image:            Metum.find(4).og_image.url
          }
  end
end