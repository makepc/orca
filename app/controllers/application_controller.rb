class ApplicationController < ActionController::Base
  protect_from_forgery
    def login_required
    redirect_to('/users/sign_in') unless user_signed_in?
  end
end
