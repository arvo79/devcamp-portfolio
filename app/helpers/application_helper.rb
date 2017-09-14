module ApplicationHelper

  def nav_items
    [
      { url: home_path, title: "Home" },
      { url: about_path, title: "About" },
      { url: contact_path, title: "Contact" },
      { url: portfolios_path, title: "Portfolios" },
      { url: blogs_path, title: "Blogs" },
      { url: tech_news_path, title: "Tech News" }
    ]
  end

	def page_links style = ''
    nav_links = ""
    nav_items.each do |item|
      nav_links << "<a href='#{item[:url]}', class='#{style} #{active? item[:url]}'>#{item[:title]}</a>"
    end
    nav_links.html_safe
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
      (link_to 'Register', new_user_registration_path, class: "#{style} #{active? new_user_registration_path}") +
      (link_to 'Login', new_user_session_path, class: "#{style} #{active? new_user_session_path}")
	  else 	 
      (link_to current_user.first_name, edit_user_registration_path, class: "#{style} #{active? edit_user_registration_path}") +
      (link_to 'Logout', destroy_user_session_path, method: :delete, class: style)
	  end	 
	end

  def active? path
    "active" if current_page? path
  end

  def copyright_generator
    ViewToolTest::Renderer.copyright "Felix Eichner", "Urheberrechtlich geschützt"
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])
    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
      js add_gritter(msg, title: "Caution:", sticky: false)
  end
end
