# frozen_string_literal: true

# account role
class AccountRole < ApplicationRecord
  # associations
  belongs_to :account
  belongs_to :role

  # validations
  validates :account_id, uniqueness: { scope: :role_id }
end
