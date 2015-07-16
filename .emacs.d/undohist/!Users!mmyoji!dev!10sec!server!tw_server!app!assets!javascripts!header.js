
((digest . "675fd0232a792d4cc809e92782c51952") (undo-list nil ("const Vue = require('vue');

" . 1) ((marker . 1) . -29) ((marker . 1) . -29) ((marker . 1) . -29) ((marker . 1) . -29) ((marker . 1) . -29) ((marker . 1) . -29) ((marker . 1) . -29) ((marker) . -29) ((marker) . -29) ((marker) . -28) ((marker) . -28) ((marker . 1) . -6) ((marker . 1) . -9) ((marker) . -29) ((marker) . -29) 30 (t 21925 42123 0 0) nil ("
" . 30) ((marker) . -1) ((marker) . -1) ((marker . 1) . -1) ((marker . 1) . -1) ((marker) . -1) nil ("
" . 30) ((marker . 1) . -1) ((marker . 1) . -1) ((marker . 1) . -1) ((marker . 1) . -1) ((marker . 1) . -1) ((marker) . -1) ((marker) . -1) ((marker) . -1) (t 21925 42121 0 0) nil ("/*
 *  if you change this breakpoint in the style.css file (or _layout.scss if you use SASS),
 *  don't forget to update this value as well
 */
" . 1) ((marker) . -94) ((marker) . -94) ((marker) . -3) ((marker) . -3) ((marker) . -144) ((marker) . -144) ((marker) . -140) ((marker) . -140) (nil fontified t 3 . 141) (nil fontified t 1 . 3) (nil rear-nonsticky t 144 . 145) nil ("." . 145) nil (145 . 146) nil (nil rear-nonsticky nil 144 . 145) (nil fontified nil 1 . 145) (1 . 145) nil ("/*
 *  if you change this breakpoint in the style.css file (or _layout.scss if you use SASS),
 *  don't forget to update this value as well
 */
" . 1) ((marker) . -140) ((marker) . -140) ((marker) . -144) ((marker) . -144) ((marker) . -94) ((marker) . -94) ((marker) . -3) ((marker) . -3) ((marker . 1) . -144) ((marker . 1) . -144) ((marker . 1) . -144) ((marker) . -144) ((marker) . -144) nil ("
" . 145) ((marker) . -1) ((marker) . -1) ((marker . 1) . -1) ((marker . 1) . -1) ((marker) . -1) nil ("const MQL = 1120;" . 145) ((marker) . -17) nil ("    if ( isWindowNarrow() ) {
      return;
    }

    var headerHeight = header.$el.clientHeight;
    var previousTop = 0;
    $(window).on('scroll', function () {
      var currentTop = $(window).scrollTop();
      //scrolling up
      if ( currentTop < previousTop ) {
        if (currentTop > 0 && header.isFixed) {
          header.isVisible = true;
        } else {
          header.isVisible = false;
          header.isFixed = false;
        }
      } else {
        //scrolling down...
        header.isVisible = false;
        if ( currentTop > headerHeight && !header.isFixed ) {
          header.isFixed = true;
        }
      }
      previousTop = currentTop;
    });
" . 268) ((marker) . -529) ((marker) . -529) ((marker) . -211) ((marker) . -211) ((marker) . -165) ((marker) . -165) ((marker) . -124) ((marker) . -124) ((marker) . -682) ((marker) . -682) ((marker) . -674) ((marker) . -674) ((marker) . -642) ((marker) . -642) ((marker) . -634) ((marker) . -634) ((marker) . -232) ((marker) . -232) ((marker) . -272) ((marker) . -272) ((marker) . -320) ((marker) . -320) ((marker) . -355) ((marker) . -355) ((marker) . -372) ((marker) . -372) ((marker) . -408) ((marker) . -408) ((marker) . -442) ((marker) . -442) ((marker) . -452) ((marker) . -452) ((marker) . -467) ((marker) . -467) ((marker) . -495) ((marker) . -495) ((marker) . -624) ((marker) . -624) ((marker) . -591) ((marker) . -591) ((marker . 75) . -151) ((marker . 75) . -151) ((marker) . -99) ((marker) . -99) ((marker . 75) . -165) ((marker) . -51) ((marker) . -51) ((marker) . -50) ((marker) . -50) ((marker) . -44) ((marker) . -44) ((marker) . -30) ((marker) . -30) ((marker) . -74) ((marker) . -80) ((marker) . -302) ((marker) . -308) ((marker) . -330) ((marker) . -336) ((marker) . -382) ((marker) . -388) ((marker) . -418) ((marker) . -424) ((marker) . -503) ((marker) . -509) ((marker) . -572) ((marker) . -578) ((marker) . -601) ((marker) . -607) ((marker) . -682) ((marker) . -682) nil ("var isWindowNarrow = function() {
  return $(window).width() <= MQL;
};

" . 194) ((marker) . -73) 267 (t 21925 42056 0 0) nil ("
" . 193) ((marker . 1) . -1) ((marker . 1) . -1) ((marker . 1) . -1) nil ("
" . 193) nil ("
" . 163) ((marker . 1) . -1) ((marker . 1) . -1) nil ("const OVERFLOW_HIDDEN = 'overflow-hidden';" . 163) nil ("var nav = new Vue({
  el: '#primary-nav',
  data: {
    isVisible: false
  }
});
" . 236) ((marker . 79) . -42) ((marker . 79) . -42) ((marker . 75) . -52) ((marker . 75) . -52) ((marker . 51) . -73) ((marker . 51) . -73) ((marker . 20) . -81) ((marker . 20) . -81) ((marker) . -81) nil ("
" . 235) ((marker) . -1) ((marker) . -1) nil ("var $dropdown = $('#dropdown');" . 235) nil ("
" . 351) ((marker) . -1) ((marker) . -1) nil ("
" . 351) ((marker) . -1) ((marker) . -1) nil ("var header = " . 351) ((marker . 1) . -13) ((marker . 1) . -13) ((marker . 1) . -13) nil ("
" . 350) ((marker) . -1) ((marker) . -1) nil ("var $body = $('body');" . 350) nil ("const TRANSITION_EVENTS = [
  'webkitTransitionEnd',
  'otransitionend',
  'oTransitionEnd',
  'msTransitionEnd',
  'transitionend'
].join(' ');

" . 206) ((marker) . -28) ((marker) . -28) ((marker) . -53) ((marker) . -53) ((marker) . -73) ((marker) . -73) ((marker) . -93) ((marker) . -93) ((marker) . -114) ((marker) . -114) ((marker) . -132) ((marker) . -132) ((marker) . -145) ((marker) . -145) ((marker) . -146) ((marker) . -146) ((marker) . -146) nil ("new Vue({
  el: '#header',

  data: {
    isVisible: false,
    isFixed: false,
    isOpen: false,
    isClicked: false,
    isDropdownActive: false
  },

  methods: {
    toggle: function(event) {
      this.isClicked = !this.isClicked;
      this.isOpen = !this.isOpen;

      // in firefox transitions break when parent overflow is changed,
      // so we need to wait for the end of the trasition to give the body an overflow hidden.
      if ( nav.isVisible ) {
        nav.isVisible = false;
        nav.$once(TRANSITION_EVENTS, function() {
          $body.removeClass(OVERFLOW_HIDDEN);
        });
      } else {
        nav.isVisible = true;
        nav.$once(TRANSITION_EVENTS, function() {
          $body.addClass(OVERFLOW_HIDDEN);
        });
      }
    },

    toggleCategories: function(event) {
      event.preventDefault();
      var isNavVisible = !this.isDropdownActive;
      this.isDropdownActive = isNavVisible;

      if ( !isNavVisible ) {
        $dropdown.one(TRANSITION_EVENTS, function(){
          $('.has-children ul').addClass('is-hidden');
          $('.move-out').removeClass('move-out');
          $('.is-active').removeClass('is-active');
        });
      }
    }
  }
});" . 533) ((marker) . -764) ((marker) . -764) ((marker) . -1195) ((marker) . -1195) ((marker) . -771) ((marker) . -771) ((marker) . -772) ((marker) . -772) ((marker) . -842) ((marker) . -842) ((marker) . -891) ((marker) . -891) ((marker) . -935) ((marker) . -935) ((marker) . -936) ((marker) . -936) ((marker) . -965) ((marker) . -965) ((marker) . -1018) ((marker) . -1018) ((marker) . -1073) ((marker) . -1073) ((marker) . -1123) ((marker) . -1123) ((marker) . -1175) ((marker) . -1175) ((marker) . -1187) ((marker) . -1187) ((marker) . -1205) ((marker) . -1205) ((marker) . -1201) ((marker) . -1201) ((marker . 1) . -467) ((marker . 1) . -467) ((marker . 1) . -467) ((marker) . -1208) 1741 (t 21925 41825 0 0) nil ("this.previ" . -2539) (2549 . 2554) nil ("this.previ" . -2147) (2157 . 2162) nil ("{ previousTop: 0 }, " . 2042) ((marker) . -20) 2062 nil (2009 . 2014) nil (1998 . 2009) ("previ" . -1998) nil (1994 . 2003) nil (1989 . 1994) (t 21925 40752 0 0)))
