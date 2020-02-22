$(function() {

  function hintShow(){
  $(".hintBox").addClass("hintShow")
  };

  function hintNo(){
    $(".hintBox").removeClass("hintShow")
  };


  $(".hintBtn").click(hintShow);
  $(".hintClose").click(hintNo);
});