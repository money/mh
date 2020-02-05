# frozen_string_literal: true

# application controller
class ApplicationController < ActionController::Base
  before_action :authenticate_account!
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :account_not_authorized

  private

  def account_not_authorized
    flash[:alert] = 'Access denied.'
    redirect_to request.referrer || root_path
  end

  def navigable_pages
    @navigable_pages = Page.navigable.order(:position)
  end

  def pundit_user
    Rack::MiniProfiler.authorize_request if current_account.try(:admin?)
    current_account
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path
  end
end
