class InputsController < ApplicationController
  
  def index
    @outputs= Input.where(lesson_id: params[:lesson_id]).where(input_or_output: 1)
    @inputs = Input.where(lesson_id: params[:lesson_id]).where(input_or_output: 2)
    @lesson_id = params[:lesson_id]
  end


  def new
    @input = Input.new
  end

  def create
    Input.create(input_params)
    
    redirect_to "/"

  end

  
  private
    def input_params
      params.require(:input).permit(:title, :content ,:image).merge(lesson_id: params[:lesson_id],input_or_output: 1,user_id: current_user.id)

    end

  end
