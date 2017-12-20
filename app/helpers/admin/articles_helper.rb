module Admin::ArticlesHelper

  def datepicker
    content_tag :div, class: "input-group row" do
      form_tag admin_articles_path, method: :get do
        (content_tag :div, "", class: "col-xs-12 col-sm-4", style: "margin-top:5px" do
          text_field_tag 'date_range[date_from]',"", class: "form-control", placeholder: "YYYY-MM-DD", data: {provide: 'datepicker', "date-format": 'yyyy-mm-dd'}
        end)+
        (content_tag :div, "", class: "col-xs-12 col-sm-4", style: "margin-top:5px" do
          text_field_tag 'date_range[date_to]',"", class: "form-control", placeholder: "YYYY-MM-DD", data: {provide: 'datepicker', "date-format": 'yyyy-mm-dd'}
        end)+
        (content_tag :span, "", class: "input-group-button col-xs-12 col-sm-1", style: "margin-top:5px" do
          button_tag type: "submit", class: "btn btn-default" do
            content_tag :i,"", class: "fa fa-search"
          end
        end)
      end
    end
  end 

end