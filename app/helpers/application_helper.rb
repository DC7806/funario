module ApplicationHelper
  # testing
  def dropzone_tag
    content_tag :form, action:"/file-upload", class: "dropzone", id: "my-awesome-dropzone" do
      content_tag :div, class: "fallback" do
        tag :input , name: "admin_article[image]"
      end
    end
  end
end

# <form action="/file-upload" class="dropzone">
#   <div class="fallback">
#     <input name="file" type="file" multiple />
#   </div>
# </form>