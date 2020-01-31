# frozen_string_literal: true

# application policy
class ApplicationPolicy
  attr_reader :account, :record

  def initialize(account, record)
    @account = account
    @record = record
  end

  def index?
    @account.admin?
  end

  def show?
    @account.admin?
  end

  def create?
    @account.admin?
  end

  def new?
    create?
  end

  def update?
    @account.admin?
  end

  def edit?
    update?
  end

  def destroy?
    @account.admin?
  end

  # scope
  class Scope
    attr_reader :account, :scope

    def initialize(account, scope)
      @account = account
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
