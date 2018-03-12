class UsersController < ApplicationController
  layout 'application'
  
  before_action :set_employer
  
  def show
  end

  private
  def set_employer
    @user = User.find(params[:id])
  end
end
