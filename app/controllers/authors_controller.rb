class AuthorsController < ApplicationController
  def index
    @authors = Author.order(created_at: :desc)
    @title = Metum.find_page("authors").title
    @seo = {description: Metum.find_page("authors").meta_description}
    @og = {
            title:            Metum.find_page("authors").title,
            type:             "website",
            url:              request.url,
            description:      Metum.find_page("authors").meta_description,
            image:            root_url + Metum.find_page("authors").og_image.url
          }
  end
end