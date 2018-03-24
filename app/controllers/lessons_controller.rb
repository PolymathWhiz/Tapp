class LessonsController < ApplicationController
  before_action :set_lession, only: [:update, :destroy]

  def new
    @lesson = Lesson.new
  end

  def index
    @lessons = Lesson.all
  end

  def create
    @lesson = current_user.lessons.new(lesson_params)
    if @lesson.save
      flash[:success] = 'Successfully added lesson.'
      redirect_to user_path
    end
  end

  def update; end

  def destroy; end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :category, :url)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
