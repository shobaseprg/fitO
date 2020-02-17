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

  // アウトプット基礎表示用
  function showOutputBaseLessons(){
    $(".outputBaseLesson")[0].classList.add("Show");
    console.log("ok");
  };

  function showOutputDevelopmentLessons(){
    console.log("ok");
  };



  // アウトプット、インプットそれぞれの基礎応用ボタン発火用
  $(".input-btn").click(showInputBtns);
  $(".output-btn").click(showOutputBtns);


  $(".inputBaseBtn").click();
  $(".inputDevBtn").click();

  $(".outputBaseBtn").click(showOutputBaseLessons);
  $(".outputDevBtn").click(showOutputDevelopmentLessons);


});