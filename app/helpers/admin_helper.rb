module AdminHelper

  # check admin status to show menus accordingly
  def admin_status
    if user_signed_in?
      link_to 'Logout', destroy_user_session_path, method: :delete
    else
      link_to 'Login', new_user_session_path
    end
  end

  # notice message 
  def notice_msg
    if notice
      content_tag :div, class: "alert alert-info alert-dismissable", role: "alert" do
        (button_tag type: "button", class: "close", data: {dismiss: "alert"} do
          content_tag :span, data: {hidden: true} do 
            "&times;".html_safe
          end
        end) + notice
      end.html_safe
    end
  end

  ## error message
  def error_msg(obj)
    if alert
      content_tag :div, class: "alert alert-warning alert-dismissable", role: "alert" do
        (button_tag type: "button", class: "close", data: {dismiss: "alert"} do
          content_tag :span, data: {hidden: true} do 
            "&times;".html_safe
          end
        end) + 
        (content_tag :span, alert) + 
        (obj.errors.full_messages.map {|msg| content_tag :span, msg, class: "label label-default", style: "margin-right:10px"}.inject(:+))
      end.html_safe
    end
  end
  ## or...
  # def error_msg(obj)
  #   render 'admin/error_msg', obj: obj if alert
  # end

end