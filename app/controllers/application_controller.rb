# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::Base
  around_action :scope_current_company

  private

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = t 'cancan.access_denied'
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js { render js: "alert('Access Denied');" }
    end
  end

  def after_sign_out_path_for(resource)
    new_user_session_url
  end

  def current_company
    Company.find_by!(subdomain: request.subdomain) if request.subdomain.present?
  end

  helper_method :current_company

  def scope_current_company
    Current.company = current_company
    yield
  ensure
    Current.reset
  end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to teams_path, alert: exception.message }
    end
  end
end
