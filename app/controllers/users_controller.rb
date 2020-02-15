class UsersController < ApplicationController
  def show
    @myinputs = current_user.inputs.where(input_or_output: 1)
    @myoutputs = current_user.inputs.where(input_or_output: 2)
  end

end
