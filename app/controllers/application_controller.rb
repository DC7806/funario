class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :seo_tags

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

end
