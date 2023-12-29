# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Properties do |Property|
      property.user == user
    end

    can :create, Property
  end
end
