class ManagementController < ApplicationController
  def index
    @users = User.all
  end

  def update
    @users = User.update(params[:users].keys, params[:users].values)
    if users_changed == false #whatever kiedys sie dowiem co jest zle
      flash[:notice] = "User priveleges updated"
      redirect_to management_path
    else
      flash[:notice] = "No changes found"
      redirect_to management_path
    end
  end
  
  
  private
  def management_params
    params.require(:user).permit(:admin, :redactor)
  end
  
  def users_changed
    User.all.each do |u|
      if u.changed.any?
        return true
      end
    end
    return false
  end
  
end
