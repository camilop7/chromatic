class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def my_events
  end

  def profile
    @user_events = UserEvent.where(user: current_user)
  end

end
