class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #Schedule table
  #add mts id to routes
  #add weekday/saturday/sunday/holiday distinction
  ###I18n.t values for names
  ###I18n.t values for directions
  ###I18n.t values for names
end
