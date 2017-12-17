module AdminHelper

  def admin_status
    if user_signed_in?
      link_to 'Logout', destroy_user_session_path, method: :delete
    else
      link_to 'Login', new_user_session_path
    end
  end

  # not working correctly 
  def notice_msg
    if notice
      content_tag :div, class: "alert alert-info alert-dismissable", role: "alert" do
        concat button_tag type: "button", class: "close", data: {dismiss: "alert"} do
          content_tag :span, data: {hidden: true} do 
            "&times;".html_safe
          end
        end
        concat notice
      end.html_safe
    end
  end

end