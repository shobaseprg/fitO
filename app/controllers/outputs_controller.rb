class OutputsController < ApplicationController

  def index
    @outputs =Output.where(all_output_id: params[:all_output_id])
    @all_output_id = params[:all_output_id]
  end
end
