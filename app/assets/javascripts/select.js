$(function() {
  // ファーストボタンの二つを変数化
let firstBtns = $(".first-btn");

  function firstBtnSwith(){
    $(".active-btn").removeClass("active-btn");
    // active-btnクラスからすべてのactive-btnクラスが削除される
    // つまり全て元の黒にする。
    $(this).addClass("active-btn");
    // firstBtnsクラスのうちクリックされたもの（this)にactiveを与える。
    // つまり白くする。

    const index = firstBtns.index(this);
    // クッリクされたthisが何番目だったかを取得し、その番号を変数indexに格納する。

    $(".secondBtns").removeClass("secondBtns-show");
    // secondBtnsクラスからsecondBtns-showクラスを削除する。
    // つまり非表示にする。
    $(".secondBtns").eq(index).addClass("secondBtns-show");
    // クリックされたthisと同じ配列番号のsecondBtnsクラスにsecondBtns-showクラスを与える。
    // つまり表示される。

  }

  // ファストボタン起動用
  firstBtns.click(firstBtnSwith);

});