# frozen_string_literal: true

# role
class Role < ApplicationRecord
  # enum
  enum title: { guest: 0, admin: 1 }

  # associations
  has_many :account_roles
  has_many :accounts, through: :account_roles

  # validations
  validates :title, presence: true, uniqueness: true,
                    inclusion: { in: Role.titles.keys }
end
