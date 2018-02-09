module ArticlesHelper  
  # ckEditor (only shows up when content available)
  def editor_tag(editor)
    if editor.content.present?
      content_tag :div, class: "row" do 
        content_tag :div, editor.content.html_safe ,class: "editor my-xs-20"
      end
    end
  end
  # tagging (only shows up when tags available)
  def tagging_tag(tagging)
    if tagging.tag_list.present?
      content_tag :div, class: "row" do
        content_tag :div, class: "article-tagging my-xs-20" do
          (content_tag :span, "標籤：") +
          (tagging.tag_list.map {|t| link_to t, tag_path(t), class: "btn btn-default ml-xs-10"}.inject(&:+))
          # look up "join" method
        end
      end
    end
  end
  # carousels markup
  def carousels_tag
    render "carousels" if @carousels.any?
  end
  # carousels style
  def carousels_style_tag
    render "carousels_style" if @carousels.any?
  end
end


