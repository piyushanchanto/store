class ApplicationController < ActionController::Base
  include Spree::UrlHelper
  protect_from_forgery
end
