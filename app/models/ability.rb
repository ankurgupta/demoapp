class Ability
  include CanCan::Ability

  def initialize(user)  
    user ||= User.new
    if user.is_admin?
      can :manage, :all
    else
      can :read, :all
      if ["editor", "reporter"].include? user.role
        can :create, Article
        can :update, Article
      end
    end
  end

end
