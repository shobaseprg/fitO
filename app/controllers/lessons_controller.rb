class LessonsController < ApplicationController

  
  def  update
    # インプットをアウトプットに移行させる
    clearInput =  Input.find(params[:id])
    clearInput.input_or_output = "2"
    clearInput.save
    redirect_to "/lessons/new "
  end

  def new
    # マイインプットからお礼用フォー
  end

  def create
    # マイインプットからお礼用
    @user = User.find_by(name: params[:name])
    # 入力された値をnameにもつユーザーを@userに格納
    if @user && @user.name != current_user.name
      # @userがいて、カレントユーザー名が同じでない場合。
    @user.output_times += 1
    @user.save
    else
      @errorMessage = "user is no exist or your name!!"
      redirect_to "/lessons/new "
    end
  end

  def edit

  end

  # def update
  #   @user = User.find_by(name: params[:name])
  #   # 入力された値をnameにもつユーザーを@userに格納
  #   @clearLesson = Input.find(id: params[:id])
  #   if @clearLesson.user.name == @user.name
  #     # 対象のインプットのユーザーの名前と@user.nameが一致した場合。
  #     @user.output_times += 1
  #     @user.save
  #   else
  #     redirect_to "/lessons/#{@clearLesson .id}/edit"
  #     # 対象インプットに対するお礼画面に戻る
  #   end
  # end
end
