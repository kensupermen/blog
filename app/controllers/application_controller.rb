class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from ActionController::RoutingError, with: :render_404

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  def render_404
    render :file => "#{Rails.root}/public/404.html",  :status => 404
  end
end
