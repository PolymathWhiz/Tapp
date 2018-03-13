class LessonsController < ApplicationController
  before_action :set_lession, only: [:update, :destroy]
  
  def index
   @lessons = Lesson.all 
  end

  def create
    # @lesson = Lesson.new
  end

  def update
  end

  def destroy
  end

  private

    def set_lesson
      @lesson =  Lesson.find(params[:id])
    end
end
