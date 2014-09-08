class AnswersController < ApplicationController

  def create
    @answer = Answer.new(answer_params)
    @choice = Choice.find( params[:choice_id] )
    @answer.save
    redirect_to @choice
  end

  private
  def answer_params
    params.require(:answer).permit(:choice_id, :answer)
  end

end
