class Subdomain
  def self.matches?(request)
    request.spree_current_user.username.present? 
  end
end