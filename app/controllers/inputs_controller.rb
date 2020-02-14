class InputsController < ApplicationController
  def index
    @inputs = Input.where(all_input_id: params[:all_input_id])
    @all_input_id = params[:all_input_id]
  end
end
