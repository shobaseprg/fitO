$(function() {
let mypageBtns = $(".mypage-btn");

  function mypageBtnSwith(){
    $(".active-btn").removeClass("active-btn")
    $(this).addClass("active-btn");

    $(".mypageDefault").removeClass("mypageDefault");
  }

  function showMyinput(){
$(".mypageInput").removeClass("mypageNonShow");
$(".mypageOutput").addClass("mypageNonShow");
  }

  function showMyOutput(){
    $(".mypageOutput").removeClass("mypageNonShow");
$(".mypageInput").removeClass("mypageNonShow");
$(".mypageInput").addClass("mypageNonShow");
      }

  

  mypageBtns.click(mypageBtnSwith);

  $(".mypageInputBtn").click(showMyinput)
  $(".mypageOutputBtn").click(showMyOutput)
});