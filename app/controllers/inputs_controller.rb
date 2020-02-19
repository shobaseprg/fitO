class InputsController < ApplicationController
  
  def index
    # @inputsにall_outputs#indexから送られてきた lesson_idと一致するinputからインプットを格納する。
    @inputs = Input.where(lesson_id: params[:lesson_id]).where(input_or_output: 1)


  end

  def show
    # アウトプットを表示する。下部にnew create input
  @outputs = Input.where(lesson_id: params[:lesson_id]).where(input_or_output: 2)
  # @inputsにall_outputs#indexから送られてきた lesson_idと一致するinputから【アウトプット】を格納する。
  @lesson_id = params[:lesson_id]
      # lesson_idを@lesson_idに格納する。newする時にどのレッスンか特定するため。
  end

  def new
    @input = Input.new
    @lesson_id = params[:id]
  end

  def create
    Input.create(input_params)
    redirect_to "/"
  end

  def destroy
    clearOutput = Input.find(params[:id]) 
    clearOutput.destroy
  end
  
  private
    def input_params
      params.require(:input).permit(:title, :content ,:image).merge(lesson_id: params[:lesson_id],input_or_output: 1,user_id: current_user.id)

    end

  end
