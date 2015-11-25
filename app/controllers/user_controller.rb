class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

 
  def index
    @users = User.all
  end
  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: 'Home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @Users = User.find(params[:id])
    end
  end 
end
