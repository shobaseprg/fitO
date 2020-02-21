class UsersController < ApplicationController

  def show
    # マイページ表示用コントローラー（インプット、アウトプット振り分け）
    @myinputs = current_user.inputs.where(input_or_output: 1)
    @myoutputs = current_user.inputs.where(input_or_output: 2)
  end

  def update
    if current_user.on_off == 0
      current_user.on_off = 1
      current_user.save
    else
      current_user.on_off = 0
      current_user.save
    end

    redirect_to "/"
  end

end
