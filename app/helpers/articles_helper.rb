module ArticlesHelper  
  # ckEditor (only shows up when content available)
  def editor_tag(editor)
    if editor.content.present?
      content_tag :div, class: "row" do 
        content_tag :div, editor.content.html_safe ,class: "editor"
      end
    end
  end
  # tagging (only shows up when tags available)
  def tagging_tag(tagging)
    if tagging.tag_list.present?
      content_tag :div, class: "article-tagging" do
        tagging.tag_list.map {|t| link_to t, tag_path(t)}.inject(&:+)
        # = tagging.tag_list.map {|t| link_to t, tag_path(t)}.join.html_safe
        # look up "join" method
      end
    end
  end
  # slides
  def slides_tag
    render "slides" if @article.slide_images.present?
  end
  # slides style
  def slides_style_tag
    render "slides_style" if @article.slide_images.present?
  end
end


