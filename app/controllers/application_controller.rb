class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :no_layout_if_xhr

  protected

  def render_404
    respond_to do |type|
      type.html {render :file => 'public/404.html', :layout => false, :status => 404}
      type.all  {render :nothing => true, :status => 404}
    end
  end

  private

  def no_layout_if_xhr
    request.xhr? ? false : "application"
  end
end
