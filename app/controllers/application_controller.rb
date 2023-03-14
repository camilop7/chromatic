class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def user_params
    params.require(:user).permit(:photo)
  end
end
