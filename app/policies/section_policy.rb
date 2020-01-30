# frozen_string_literal: true

# section policy
class SectionPolicy < ApplicationPolicy
  # scope
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
