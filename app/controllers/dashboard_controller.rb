class DashboardController < ApplicationController
  before_action :redirect_user
  def home
  end

  def redirect_user
    if current_user.homeowner?
      redirect_to homeowner_dashboard_path
    else
      redirect_to tradesperson_dashboard_path
    end
  end
end
