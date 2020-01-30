# frozen_string_literal: true

# application controller
class ApplicationController < ActionController::Base
  before_action :authenticate_account!

  private

  def navigable_pages
    @navigable_pages = Page.navigable.order(:position)
  end
end
