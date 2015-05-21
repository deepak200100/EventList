class User < ActiveRecord::Base
	acts_as_authentic do |c|
	 c.validate_login_field = false
	 c.validate_email_field = false
	 # c.validate_password_field = false
	end
	validates_uniqueness_of :username,:email
end
