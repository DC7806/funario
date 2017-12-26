class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :seo_tags, :system, :title

  def seo_tags
    @seo = {
            description:      "from application_controller" ,
            keyword:          "from application_controller"
            }
    @og = {
            type:             "website",
            url:              request.url,
            } 
  end

  def system
    @system = System.first
  end

  def title
    # @title = System.first.title
    @site_name = System.first.site_name
  end

  ## not working here but Metum model
  # def self.seo(page_name)
  #   where(page_name: page_name)[0]
  # end

end
