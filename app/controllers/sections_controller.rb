# frozen_string_literal: true

# sections controller
class SectionsController < ApplicationController
  before_action :navigable_pages
  before_action :find_page, only: %i[new create]
  before_action :find_section, only: %i[edit update]

  def new
    @section = authorize Section.new(page: @page)
  end

  def create
    @section = authorize Section.new(page: @page)
    @section.assign_attributes(section_params)
    if @section.save
      redirect_to @page
    else
      render :new
    end
  end

  def edit
    (params.fetch(:cards_size, 3).to_i - @section.cards.size).times do
      @section.cards.build(type: 'Card', parent_id: @section.id)
    end
  end

  def update
    if @section.update(section_params)
      redirect_to @section.page
    else
      render :edit
    end
  end

  private

  def section_params
    params.require(:section)
          .permit(:id, :image, :position, :content, :title, :remove_image,
                  cards_attributes: %i[id title image position content
                                       remove_image parent_id type _destroy])
  end

  def find_page
    @page = authorize Page.find_by(slug: params[:page_slug])
  end

  def find_section
    @section = authorize Section.find(params[:id])
  end
end
