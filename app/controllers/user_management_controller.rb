class UserManagementController < ApplicationController
    
  def index
    @users = User.all 
  end
end
