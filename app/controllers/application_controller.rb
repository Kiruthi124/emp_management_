class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from Timeout::Error, :with => :rescue_from_timeout

  protected

  def rescue_from_timeout(exception)
    # code to handle the issue
  end
end
