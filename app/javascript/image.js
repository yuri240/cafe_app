
document.addEventListener("turbo:load", function() {
  $('.slider').slick({
    autoplay: true,  //自動再生
    infinite: true,  //スライドのループ
    speed: 1000,  //切り替えのスピード（ミリ秒）
    slidesToShow: 1,  //画像表示数
    slidesToScroll: 1,  //スクロールする画像数
    prevArrow: '<div class="slick-prev"></div>',
    nextArrow: '<div class="slick-next"></div>',
    dots: true,
    responsive: [
      {
      breakpoint: 769,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
      }
    },
    {
      breakpoint: 426,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      }
    }
    ]
  });
});
