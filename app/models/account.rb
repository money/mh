# frozen_string_literal: true

# account
class Account < ApplicationRecord
  default_scope -> { eager_load(:roles) }

  # attributes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # associations
  has_many :account_roles
  has_many :roles, through: :account_roles, inverse_of: :accounts

  def admin?
    roles.any?(&:admin?)
  end
end
