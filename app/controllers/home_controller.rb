# frozen_string_literal: true

# home controller
class HomeController < ApplicationController
  before_action :navigable_pages

  def show
    @page = Page.find_by(slug: 'home')
  end
end
