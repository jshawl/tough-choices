class ChoicesController < ApplicationController

  before_action :authenticate_user!

  def index
    @choices = Choice.all
  end

  def edit
    @choice = Choice.find( params[:id] )
  end

  def update
    @choice = Choice.find( params[:id] ) 
    @choice.update choice_params
    redirect_to @choice
  end

  def show
    @choice = Choice.find( params[:id] )
    @answer = Answer.new
    @answers = @choice.answers
  end

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new choice_params
  end

  private
  def choice_params
    params.require(:choice).permit(:name)
  end

end