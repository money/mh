# frozen_string_literal: true

# card
class Card < Section
  # associations
  belongs_to :section, foreign_key: :parent_id
end
