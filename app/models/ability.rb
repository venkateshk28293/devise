class Ability
  include CanCan::Ability

  def initialize(user)
   
   if user.admin?
     can :manage, :all
   elsif  user.guest?
     can :create, Comment
    else 
      can :read, post 
   end
  end
end
