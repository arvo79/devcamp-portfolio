module ApplicationHelper

	def page_links style = ''
  	(link_to 'Portfolios', portfolios_path, class: style) +
  	(link_to 'Blogs', blogs_path, class: style) +
  	(link_to 'Overview', home_path, class: style) +
  	(link_to 'About', about_path, class: style) +
  	(link_to 'Contact', contact_path, class: style)
	end

	def source_helper
    if session[:source]
      greeting = "Thank you for visiting from " 
      (content_tag(:span, greeting, class: "source-greeting")) +
      (content_tag(:span, session[:source].capitalize))
    end
	end

	def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path, class: style) +
      (link_to 'Login', new_user_session_path, class: style)
	  else 	 
      (link_to current_user.first_name, edit_user_registration_path, class: style) +
      (link_to 'Logout', destroy_user_session_path, method: :delete, class: style)   
	  end	 
	end

  def copyright_generator
    ViewToolTest::Renderer.copyright "Felix Eichner", "Urheberrechtlich geschützt"
  end
end
