class UsersController < ApplicationController
  before_action :authenticate_user!
  
  before_action :set_user, only: [:show]
  
  layout 'application'

  def show 
    @users = User.all
    @lesson_count = Lesson.all.count
    @user_count = @users.count
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end