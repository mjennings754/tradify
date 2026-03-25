class DashboardsController < ApplicationController
  before_action :ensure_homeowner!, only: [:homeowner]
  before_action :ensure_tradesperson!, only: [:tradesperson]
  def homeowner
  end

  def tradesperson
  end

  private

  def ensure_homeowner!
    return if current_user.homeowner?
    
    redirect_to tradesperson_dashboard_path
  end

  def ensure_tradesperson!
    return if current_user.tradesperson?

    redirect_to homeowner_dashboard_path
  end

end
