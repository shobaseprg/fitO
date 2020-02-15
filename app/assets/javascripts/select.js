$(function() {
  function showInputBtns(){
    $(".input-base-dev-btns")[0].classList.add("Show");
    $(".output-base-dev-btns")[0].classList.add("Show");
    $(".output-base-dev-btns")[0].classList.remove("Show");
  };

  function showOutputBtns(){
    $(".output-base-dev-btns")[0].classList.add("Show");
    $(".input-base-dev-btns")[0].classList.add("Show");
    $(".input-base-dev-btns")[0].classList.remove("Show");
  };

  $(".input-btn").click(showInputBtns);
  $(".output-btn").click(showOutputBtns);



});