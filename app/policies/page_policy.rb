# frozen_string_literal: true

# page policy
class PagePolicy < ApplicationPolicy
  def show?
    true
  end
  # scope
  class Scope < Scope
    def resolve
      scope.where(type: nil).all
    end
  end
end
