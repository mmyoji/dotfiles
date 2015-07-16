
((digest . "4ea0b013d45c7a74de78086a74c12b3e") (undo-list nil ("
const Vue = require('vue');

" . 1) ((marker) . -30) ((marker) . -30) ((marker) . -29) ((marker) . -29) ((marker) . -1) ((marker) . -1) ((marker . 1) . -30) ((marker . 1) . -30) ((marker . 1) . -30) ((marker) . -30) ((marker) . -30) nil ("// browser window scroll (in pixels) after which the \"back to top\" link is shown
const OFFSET = 300;
//browser window scroll (in pixels) after which the \"back to top\" link opacity is reduced
const OFFSET_OPPACITY = 1200;
" . 1) ((marker . 1) . -221) ((marker . 1) . -221) ((marker) . -221) nil ("    $(window).scroll(function() {
      if ( $(this).scrollTop() > OFFSET ) {
        btn.isVisible = true;
      } else {
        btn.isVisible = false;
        btn.fadeOut = false;
      }

      if ( $(this).scrollTop() > OFFSET_OPPACITY ) {
        btn.fadeOut = true;
      }
    });
" . 314) ((marker) . -289) nil ("
" . 252) nil ("var btn = " . 252) ((marker . 1) . -10) nil ("//duration of the top scrolling animation (in ms)
const SCROLL_TOP_DURATION = 700;
" . 222) ((marker) . -83) nil ("new Vue({
  el: '#back-to-top',
  data: {
    isVisible: false,
    fadeOut: false
  },
  methods: {
    scrollToTop: function(event) {
      event.preventDefault();
      $('body,html').animate({
        scrollTop: 0
      }, SCROLL_TOP_DURATION);
    }
  }
});
" . 345) ((marker) . -263) 608 (t 21925 40752 0 0)))
