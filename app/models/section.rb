# frozen_string_literal: true

# section
class Section < Page
  # constants
  LAYOUT = [%w[default default_layout], %w[profile profile_layout]].freeze

  # default scope
  default_scope { includes(:page, :cards).where(type: 'Section') }

  # attributes
  attr_accessor :cards_size

  # associations
  belongs_to :page, foreign_key: :parent_id
  has_many :cards,
           -> { where(type: 'Card') }, class_name: 'Page', dependent: :destroy,
                                       foreign_key: :parent_id

  # validations

  # callbacks
  before_save :markdown_content

  # accepts nested attributes
  accepts_nested_attributes_for :cards, limit: 3, reject_if: :all_blank,
                                        allow_destroy: true

  # instance methods
  def markdown_content
    self.content = ReverseMarkdown.convert(content, github_flavored: true)
  end
end
