class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :no_layout_if_xhr


  private

  def no_layout_if_xhr
    request.xhr? ? false : "application"
  end
end
