class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # if someone asks for html, redirect them to the home page, we only serve json
  def intercept_html_requests
    redirect_to('/') if request.format == Mime::HTML
  end
  
end
