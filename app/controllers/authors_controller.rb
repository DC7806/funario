class AuthorsController < ApplicationController
  def index
    @authors = Author.all.order(created_at: :desc)
    seo = Metum.where(page_name: :authors)[0]
    @title = seo.title
    @seo = {description: seo.meta_description}
    @og = {
            title:            seo.title,
            type:             "website",
            url:              request.url,
            description:      seo.meta_description,
            image:            root_url + seo.og_image.url
          }
  end
end