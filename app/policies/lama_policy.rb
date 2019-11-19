class LamaPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create?
      return true
    end

    def update?
      true
    end

  end
end
