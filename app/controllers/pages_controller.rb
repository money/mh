# frozen_string_literal: true

# pages controller
class PagesController < ApplicationController
  before_action :navigable_pages
  before_action :find_page, only: %i[edit update show destroy]

  def index
    @pages = Page.where(type: nil).all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to :pages
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @page.update(page_params)
      flash[:notice] = 'Page updated'
      redirect_to :pages
    else
      render :edit
    end
  end

  private

  def page_params
    params.require(:page)
          .permit(:title, :aasm_state, :layout, :position, :content, :image,
                  sections_attributes: %i[id title image
                                          position content _destroy])
  end

  def find_page
    @page = Page.includes(sections: :cards)
                .find_by(slug: params[:slug])
  end
end
