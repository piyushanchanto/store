


module Spree
  User.class_eval do
  	# Setup accessible (or protected) attributes for your model
    attr_accessible :email, :password, :password_confirmation, :remember_me, :persistence_token, :login, :username 
  end
end