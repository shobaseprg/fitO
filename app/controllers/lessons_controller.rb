class LessonsController < ApplicationController

  def  update
    # インプットをアウトプットに移行させる
    clearInput =  Input.find(params[:id])
    clearInput.input_or_output = "2"
    clearInput.save
    redirect_to "/lessons/new "
    # お礼のために、lessons#newに飛ぶ
  end

  def new
  end

  def create   # インプットからのお礼時に教えてもらったユーザーのカウントを増やす。
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

    def destroy      # アウトプットからのお礼時に教えてもらったユーザーのカウントを増やし,outputを削除する。
      selectUser = User.find_by(name: params[:name])
      # 入力されたnameを持つuserを取得して、selectUserに格納。
      deleteOutput = Input.find(params[:id])
      # 対象のアウトプットをdeleteOutputに格納
      if selectUser.name == deleteOutput.user.name
        # selectUserのnameと当該outputのnemeが一致した場合。
        selectUser.output_times += 1
        selectUser.save
        deleteOutput.destroy
      else
        redirect_to "/lessons/#{deleteOutput.id}", "method:DELETE"

      end

    end
  end
end
