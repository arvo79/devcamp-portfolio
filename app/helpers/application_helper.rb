module ApplicationHelper

	def page_links
  	(link_to 'Portfolios', portfolios_path, style: 'margin-right:50px') +
  	(link_to 'Blogs', blogs_path, style: 'margin-right:50px') +
  	(link_to 'Overview', home_path, style: 'margin-right:50px') +
  	(link_to 'About', about_path, style: 'margin-right:50px') +
  	(link_to 'Contact', contact_path)
	end

	def source_helper
    if session[:source]
      greeting = "Thank you for visiting from " 
      (content_tag(:span, greeting, class: "source-greeting")) +
      (content_tag(:span, session[:source].capitalize, style: "font-weight:bold; margin-right:50px"))
    end
	end

	def login_helper
    if current_user.is_a?(User)
  	  (link_to current_user.first_name, edit_user_registration_path,
  	  	style: 'margin-right:50px; margin-left:50px') +
  	  (link_to 'Logout', destroy_user_session_path, method: :delete) 	 
	  else 	 
  	  ('Hello '.html_safe + current_user.first_name) +
  	  (link_to 'Register', new_user_registration_path, style: 'margin-right:50px; margin-left:50px') +
  	  (link_to 'Login', new_user_session_path)
	  end	 
	end

  def copyright_generator
    ViewToolTest::Renderer.copyright "Felix Eichner", "Urheberrechtlich geschützt"
  end
end
