class LessonsController < ApplicationController

  
  def  update
    clearInput =  Input.find(params[:id])
    clearInput.input_or_output = "2"
    clearInput.save
    redirect_to "/lessons/new "
  end

  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user
    @user.output_times += 1
    @user.save
    else
      redirect_to "/lessons/new "
    end
  end
end
