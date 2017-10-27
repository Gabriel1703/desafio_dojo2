class LoginPage <SitePrism::Page

	set_url "https://demo.suiteondemand.com/"

	element :username_field, "#user_name"
	element :password_field, "#user_password"
	element :login_button, "#bigbutton"

	def log_in(username, password)
		username_field.set(username)
		password_field.set(password)
		login_button.click
		
	end
	
end	