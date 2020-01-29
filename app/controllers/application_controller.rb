# frozen_string_literal: true

# application controller
class ApplicationController < ActionController::Base
  private

  def navigable_pages
    @navigable_pages = Page.navigable.order(:position)
  end
end
