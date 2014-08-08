module Spree::UrlHelper
  def with_subdomain(spree_current_user)
    spree_current_user.username = (spree_current_user.username || "")
    spree_current_user.username += "." unless spree_current_user.username.empty?
    [spree_current_user.username, request.domain, request.port_string].join
  endspree_current_user.username
  
  def url_for(options = nil)
    if options.kind_of?(Hash) && options.has_key?(:spree_current_user.username)
      options[:host] = with_subdomain(options.delete(:spree_current_user.username))
    end
    super
  end
end
end