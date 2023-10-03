
document.addEventListener("turbo:load", function() {

  // slick設定オプションを以下に追加
  $('.slider').slick({
    autoplay: true,  //自動再生
    infinite: true,  //スライドのループ
    speed: 1000,  //切り替えのスピード（ミリ秒）
    slidesToShow: 1,  //画像表示数
    slidesToScroll: 1,  //スクロールする画像数
    prevArrow: '<div class="slick-prev"></div>',  //矢印部分PreviewのHTMLを変更
    nextArrow: '<div class="slick-next"></div>',  //矢印部分NextのHTMLを変更
    dots: true,  //下部ドットナビの表示
    responsive: [
      {
      breakpoint: 769,  //ブレークポイントが769px
      settings: {
        slidesToShow: 2,  //画像表示数
        slidesToScroll: 2,  //画像スクロール数
      }
    },
    {
      breakpoint: 426,  //ブレークポイントが426px
      settings: {
        slidesToShow: 1,  //画像表示数
        slidesToScroll: 1,  //画像スクロール数
      }
    }
    ]
  });
});
