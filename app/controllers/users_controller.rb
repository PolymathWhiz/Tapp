class UsersController < ApplicationController
  before_action :authenticate_user!
  
  before_action :set_user, only: [:show]
  
  layout 'application'

  def show 
    @users = User.all
  end

  def security
    @login_ip = current_user.current_sign_in_ip
    @last_login_ip = current_user.last_sign_in_ip
    @sign_in_count = current_user.sign_in_count
    @member_since = current_user.created_at.to_date.to_s(:long)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
