module ArticlesHelper
  # title tag option1
  def title(title = nil) 
    if title.present?
      content_tag :title {title + " | Funario"}
    else
      content_tag :title {"default"}
    end
  end
  #title tag option2
  def title_tag(page_title)
    if title.present?
      tag.title "#{page_title} | test"
    else
      tag.title "default"
    end
  end
  
  # the editor section only shows up if content available
  def editor_tag(editor)
    if editor.content.present?
      content_tag :div, class: "row" do 
        content_tag :div, editor.content.html_safe ,class: "editor"
      end
    end
  end

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

end

# "<meta name="description" content="meta_description"/>" + "<meta name="keyword" content="title1"/>"
