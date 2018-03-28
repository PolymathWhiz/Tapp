class LessonsController < ApplicationController
  before_action :set_lesson, only: [:update, :destroy, :show]
  before_action :restrict_access, only: [:create, :update, :destroy]

  def new
    @lesson = Lesson.new
  end

  def index
    @lessons = Lesson.all
  end

  def show; end

  def beginner
    @beginner = Lesson.where(category: 1)
  end

  def intermediate
    @intermediate = Lesson.where(category: 2)
  end

  def advanced
    @advanced = Lesson.where(category: 3)
  end

  def create
    @lesson = current_user.lessons.new(lesson_params)
    if @lesson.save
      flash[:success] = 'Successfully added lesson...'
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def update; end

  def destroy
    @lesson.destroy
    redirect_to current_user
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :category, :url, :description)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def restrict_access
    redirect_to user_path(current_user) unless current_user.try(:admin)
  end
end
