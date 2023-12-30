class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Property do |property|
      property.user == user
    end
    can :create, Property
    can :read, Property
  end
end
