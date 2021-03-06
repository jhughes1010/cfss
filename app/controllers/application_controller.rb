class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authorize
  require 'csv'
  
  
  protected
  def authorize
    unless User.find_by_id( session[:user_id])
    flash[:notice] = "Please log in"
    redirect_to :controller => 'sessions', :action => 'login'
  end
end
end
