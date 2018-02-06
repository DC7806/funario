module ApplicationHelper
    # title tag option1
  def title_tag(title, site_name)
    if title.present? 
      content_tag :title, "#{title} | #{site_name}"
    else
      content_tag :title, "#{site_name}"
    end  
  end
  ##title tag option2
  # def title_tag(title, site_name)
  #   if title.present?
  #     tag.title "#{title}"+ " | " + "#{site_name}"
  #   else
  #     tag.title site_name
  #   end
  # end

  #meta description 
  def meta_description_tag(hsh)
    ##iteration stops after the first one???
    # hsh.each {|key, value| tag(:meta, name: key , content: value)}
    ## equals to the line at the end??? (reference: 5xRuby)
    hsh.map {|key, value| tag(:meta, name: key , content: value)}.inject(&:+)
  end

  def og_tag(hsh)
    hsh.map {|key, value| tag(:meta, property: "og:#{key}" , content: value)}.inject(&:+)
  end
  # "<meta name="description" content="meta_description"/>" + "<meta name="keyword" content="title1"/>"
  
  # testing #
  # def dropzone_tag
  #   content_tag :form, action:"/file-upload", class: "dropzone", id: "my-awesome-dropzone" do
  #     content_tag :div, class: "fallback" do
  #       tag :input , name: "admin_article[image]"
  #     end
  #   end
  # end

  def analytics_gtm_tag
    render 'analytics/gtm' if @system.gtm_id.present?
  end
  def analytics_ga_tag
    render 'analytics/ga' if @system.ga_id.present?
  end
  def analytics_fb_tag
    render 'analytics/fb' if @system.fb_pixel.present?
  end

  def home_nav
    if controller_name == 'pages' && action_name == 'index'
      render 'pages/home_nav'
    else
      render 'layouts/nav'
    end
  end

end