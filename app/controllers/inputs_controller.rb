class InputsController < ApplicationController
  
  def index
    @inputs = Input.where(all_input_id: params[:all_input_id])
    #  proinput =  Input.find(1)
    # @user = proinput.users.name
    @all_input_id = params[:all_input_id]
  end

  def new
    @input = Input.new
  end

  def create
    input = Input.create(input_params)
    UserInput.create(user_id: current_user.id,input_id: input.id)
    redirect_to "/"
  end
  
  private
    def input_params
      params.require(:input).permit(:title, :content ,:image).merge(all_input_id: params[:all_input_id])

    end

  end
