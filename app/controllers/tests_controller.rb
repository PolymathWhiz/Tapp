class TestsController < ApplicationController
  def new
  end

  def create

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
 