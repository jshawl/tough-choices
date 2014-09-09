class ChoicesController < ApplicationController

  before_action :authenticate_user!
  before_filter :require_permission, only: [:show, :edit, :delete]

  def require_permission
    if current_user != Choice.find(params[:id]).user
      redirect_to root_path
    end
  end

  def index
    @choices = Choice.where(user_id: current_user.id)
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
    @ttl = 3
    # @answers = @choice.answers
  end

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new choice_params.merge(user_id: current_user.id )
    if @choice.save
      redirect_to @choice
    else
      render 'new'
    end
  end

  private
  def choice_params
    params.require(:choice).permit(:name)
  end

end