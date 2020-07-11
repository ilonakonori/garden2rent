class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user_is_booker?
  end

  def create?
    user_is_booker?
  end

  private

  def user_is_booker?
    record.booking.user == user
  end
end
