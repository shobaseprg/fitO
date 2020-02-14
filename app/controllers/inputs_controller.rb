class InputsController < ApplicationController
  
  def index
    @outputs= Input.where(lesson_id: params[:lesson_id]).where(input_or_output: 1)
    @inputs = Input.where(lesson_id: params[:lesson_id]).where(input_or_output: 2)
  end

  def new
    @input = Input.new
  end

  def create
    Input.create!(input_params)
    
    redirect_to "/"

  end
  
  private
    def input_params
      params.require(:input).permit(:title, :content ,:image).merge(all_input_id: params[:all_input_id])

    end

  end
