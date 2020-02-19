class LessonsController < ApplicationController

  
  def  update
    # インプットをアウトプットに移行させる
    clearInput =  Input.find(params[:id])
    clearInput.input_or_output = "2"
    clearInput.save
    redirect_to "/lessons/new "
  end

  def new
  end

  def create
    # 教えてもらったユーザーのカウントアップ
    @user = User.find_by(name: params[:name])
    if @user && @user.name != current_user.name
      # @userがいて、カレントユーザー名が同じでない場合。
    @user.output_times += 1
    @user.save
    else
      @errorMessage = "user is no exist or your name!!"
      redirect_to "/lessons/new "
    end

    def show
    end

    def destroy
    end
  end
end
