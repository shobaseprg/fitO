class InputsController < ApplicationController
  
  def index
    @inputs = Input.where(all_input_id: params[:all_input_id])
    @all_input_id = params[:all_input_id]
    @input = Input.find(20)
    @users = @input.users
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
      params.require(:input).permit(:title, :content ,:image).merge(all_input_id: params[:all_input_id])

    end

  end
