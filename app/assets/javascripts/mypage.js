$(function() {
let mypageBtns = $(".mypage-btn");

  function mypageBtnSwith(){
    $(".active-btn").removeClass("active-btn");
    $(this).addClass("active-btn");
    // ボタンの色を変更。

    $(".mypageDefault").removeClass("mypageDefault");
    // デフォルトのページを削除
  }

  function showMyinput(){
    // マイページインプットを表示させる
$(".mypageInput").removeClass("mypageNonShow");
$(".mypageOutput").addClass("mypageNonShow");
  }

  function showMyOutput(){
    // マイページアウトプットを表示させる
    $(".mypageOutput").removeClass("mypageNonShow");
$(".mypageInput").removeClass("mypageNonShow");
$(".mypageInput").addClass("mypageNonShow");
      }

  
  
  mypageBtns.click(mypageBtnSwith);
  // どちらかのボタンが押されたら、ボタンの色を変えてデフォルト画面を消去

  $(".mypageInputBtn").click(showMyinput)
  // マイページインプットボタンが押された場合

  $(".mypageOutputBtn").click(showMyOutput)
  // マイページアウトプットボタンが押された場合
});