class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def my_events
  end

  def profile
    # @events = E
  end

end
