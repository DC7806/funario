module ArticlesHelper
  # title tag option1
  def title(title = nil) 
    if title.present?
      content_tag :title {title.title + " | Funario"}
    else
      conten_tag :title {"default"}
    end
  end
  #title tag option2
  def title_tag(page_title)
    tag.title "#{page_title} | test"
  end
  
  # the editor section only shows up if content available
  def editor_tag(editor)
    if editor.content.present?
      content_tag :div, class: "row" do 
        content_tag :div, editor.content.html_safe ,class: "editor"
      end
    end
  end

  # meta description option1
  # def meta_description_tag(hash)
  #   key = hash.keys[0].to_s
  #   value = hash[:description]
  #   tag :meta, { name: key , content: value}
  # end

  #meta description option2 (iteration stops after the first one???)
  def meta_description_tag(hsh)
    hsh.map {|key, value| tag(:meta, name: key , content: value)}
  end

end

