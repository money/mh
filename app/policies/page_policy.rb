# frozen_string_literal: true

# page policy
class PagePolicy < ApplicationPolicy
  # scope
  class Scope < Scope
    def resolve
      scope.where(type: nil).all
    end
  end
end
