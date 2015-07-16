
((digest . "5690ac415b987558df0220a4ad3e4dff") (undo-list nil ("var popup = require('./vue_components/popup');
var productDetail = require('./vue_components/product_detail');

" . 2) ((marker . 2) . -12) ((marker . 2) . -12) ((marker . 2) . -111) ((marker) . -112) ((marker) . -112) ((marker) . -111) ((marker) . -111) ((marker) . -47) ((marker) . -47) ((marker . 2) . -4) ((marker . 2) . -9) ((marker . 2) . -51) ((marker . 2) . -64) ((marker) . -112) ((marker) . -112) nil ("
" . 1) ((marker . 1) . -1) ((marker . 1) . -1) ((marker . 1) . -1) nil ("const ESC_KEY_CODE = 27;" . 1) ((marker . 1) . -6) ((marker . 1) . -18) (t 21925 41135 0 0) nil ("  closeWithEscBtn: function() {
    document.addEventListener('keyup', function(event) {
      if ( event.which === ESC_KEY_CODE ) {
        popup.isActive = false;
      }
    }, false);
  }

" . 159) ((marker . 1) . -165) ((marker . 22) . -32) ((marker) . -193) 352 (t 21925 40840 0 0) nil ("c" . 124) (t 21925 40752 0 0) nil ("const Vue = require('vue');
" . 26) 54 (t 21925 40345 0 0) nil ("  init: function() {
  },

" . 188) 215 (t 21925 40337 0 0) nil ("w" . 166) nil (166 . 167) nil ("    new Vue({
      el: '#product-show',
      methods: {
        show: function(event) {
          event.preventDefault();
          popup.isActive = true;
        }
      }
    });
" . 209) 392 (t 21925 40270 0 0) nil (152 . 163) nil ("u" . -152) nil (142 . 153) nil ("e" . -142) nil ("n" . -143) nil (131 . 144) nil (76 . 77) nil ("/" . -130) nil ("v" . -131) nil (130 . 132) nil (112 . 118) nil ("S" . -112) nil ("h" . -113) nil ("o" . -114) nil ("w" . -115) nil (127 . 129) nil (123 . 129) nil ("o" . -123) nil ("r" . -124) nil ("e" . -125) nil (125 . 126) nil (105 . 125) nil (101 . 105) nil (100 . 101) (t 21925 40203 0 0) nil (96 . 97) nil (76 . 96) nil (78 . 79) nil (";" . 77) nil (77 . 78) nil ("'" . -77) nil (75 . 78) nil (67 . 76) nil ("new Vue({
  el: '#popup',
  data: {
    isActive: false
  },
  methods: {
    close: function(event) {
      event.preventDefault();
      this.isActive = false;
    }
  }
});" . 67) 242 (t 21925 40005 0 0)))
