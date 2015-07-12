helpers do
	def current_user
		@current_user ||= Bumblebee.find_by(username: session[:username]) if session[:username]	
	end

	def login(username)
		session[:username] = username
	end

	def logout
		session[:username] = nil
	end

	def logged_in?
	    !session[:username].nil?
	end
	
	def search_usernames(username)
		@users = Bumblebee.where('username LIKE ?', "%#{username}%")
	end

	def search_firstns(first_name)
		@users = Bumblebee.where('first_name LIKE ?', "%#{first_name}%")
	end

	def search_lastns(last_name)
		@users = Bumblebee.where('last_name LIKE ?', "%#{last_name}%")
	end

	def search_emails(email)
		@users = Bumblebee.where('email LIKE ?', "%#{email}%")
	end

end