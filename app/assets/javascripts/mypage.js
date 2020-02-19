$(function() {
let mypageBtns = $(".mypage-btn");

  function mypageBtnSwith(){
    $(".active-btn").removeClass("active-btn");
    $(this).addClass("active-btn");
  }

mypageBtns.click(mypageBtnSwith);

});