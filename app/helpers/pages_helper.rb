module PagesHelper
  # home slider
  def home_slider_tag
    render "home_slider" if @sliders.present?
  end
  def home_slider_style_tag
    render "home_slider_style" if @sliders.present?
  end
end
