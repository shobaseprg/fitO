class UsersController < ApplicationController

  def show
    # マイページ表示用コントローラー（インプット、アウトプット振り分け）
    @myinputs = current_user.inputs.where(input_or_output: 1)
    @myoutputs = current_user.inputs.where(input_or_output: 2)
  end

end
