# frozen_string_literal: true

# home controller
class HomeController < ApplicationController
  skip_before_action :authenticate_account!
  before_action :navigable_pages

  def show
    @page = Page.order(position: :asc)
                .find_by(slug: 'home', type: nil)
  end
end
