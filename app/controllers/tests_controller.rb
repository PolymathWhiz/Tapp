class TestsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_test, only: [:advanced_quiz, :beginner_quiz, :intermediate_quiz]
  def new
  end

  def create
  end

  def show
  end

  def beginner_quiz
  end

  def intermediate_quiz

  end

  def advanced_quiz
  end

  def add
  end

  def destroy
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit!
  end
end
 