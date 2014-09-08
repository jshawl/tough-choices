class ChoicesController < ApplicationController

  before_action :authenticate_user!

  def index
    @choices = Choice.all
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
    @choice = Choice.new
  end

end