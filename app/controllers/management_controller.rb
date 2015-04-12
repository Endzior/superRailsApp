class ManagementController < ApplicationController
  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(management_params)
    redirect_to management_path
  end
  
  
  private
  def management_params
    params.require(:user).permit(:admin, :redactor)
  end
end
