class AuthorsController < ApplicationController
  def index
    @authors = Author.all.order(created_at: :desc)
    @title = Metum.where(page_name: :authors)[0].title
    @seo = {description: Metum.where(page_name: :authors)[0].meta_description}
    @og = {
            type:             "website",
            url:              request.url,
            description:      Metum.where(page_name: :authors)[0].meta_description,
            image:            Metum.where(page_name: :authors)[0].og_image.url
          }
  end
end