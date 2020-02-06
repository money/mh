# frozen_string_literal: true

# page
class Page < ApplicationRecord
  # default scope

  # attributes
  attr_accessor :remove_image

  # constants
  LAYOUT = [%w[default default_layout], %w[profile profile_layout]].freeze

  # libraries
  include AASM

  # associations
  has_many :sections,
           lambda {
             where(type: 'Section')
               .order(position: :asc)
           },
           class_name: 'Page',
           dependent: :destroy,
           foreign_key: :parent_id

  # validations
  with_options if: :page_class? do |page|
    page.validates :title, presence: true, uniqueness: true
  end
  with_options if: :navigable? do |navigable|
    navigable.validates :position, presence: true,
                                   uniqueness: { scope: :aasm_state }
  end

  # attachment
  has_one_attached :image

  # scopes

  # callbacks
  before_save :set_slug
  after_save :purge_image

  # aasm state
  aasm do
    state :draft, initial: true
    state :published
    state :navigable

    event :publish do
      transitions from: %i[draft navigable], to: :published
    end
  end

  # accepts nested fields
  accepts_nested_attributes_for :sections, allow_destroy: true,
                                           reject_if: :all_blank

  # instance methods
  def to_param
    slug
  end

  def set_slug
    self.slug = title.parameterize(separator: '_') if page_class?
  end

  def page_class?
    type.nil?
  end

  def purge_image
    sections.each do |section|
      section.image.purge if section.remove_image.present?
    end
  end
end
