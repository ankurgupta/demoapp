class Ability
  include CanCan::Ability

  def initialize(user)  
    user ||= User.new
    
    can :manage, :all if user.is_admin?
    can :index, :all
    can :read, Article, :published => true
    
    if user.role == 'reporter'
      can :create, Article
      can :update, Article, :user_id => user.id
      can :read, Article, :user_id => user.id
    end

    if user.role == 'editor'
      can :create, Article
      can :update, Article
      can :read, Article, :user_id => user.id
    end
  end

end
