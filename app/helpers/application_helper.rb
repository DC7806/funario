module ApplicationHelper
  # testing
  def dropzone_tag
    content_tag :form, action:"/file-upload", class: "dropzone", id: "my-awesome-dropzone" do
      content_tag :div, class: "fallback" do
        tag :input , name: "admin_article[image]"
      end
    end
  end

  def analytics_gtm_tag
    render 'analytics/gtm' if @system.gtm_id.present?
  end
  def analytics_ga_tag
    render 'analytics/ga' if @system.ga_id.present?
  end
  def analytics_fb_tag
    render 'analytics/fb' if @system.fb_pixel.present?
  end

end

# <form action="/file-upload" class="dropzone">
#   <div class="fallback">
#     <input name="file" type="file" multiple />
#   </div>
# </form>