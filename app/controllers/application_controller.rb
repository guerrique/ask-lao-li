class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def authenticate_admin!
    authenticate_user!
    redirect_to :somewhere, status: :forbidden unless current_user.admin?
  end
end
