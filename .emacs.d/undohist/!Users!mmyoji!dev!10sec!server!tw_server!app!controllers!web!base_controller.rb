
((digest . "dccf62d5ecd691f6fb9d7e23782e0447") (undo-list nil (265 . 271) ("  " . 264) (266 . 267) nil (218 . 226) (" " . 217) (218 . 219) nil (178 . 186) (" " . 177) (178 . 179) (t 21925 12361 0 0) nil (256 . 259) nil (" " . -256) nil (" " . -257) nil (251 . 258) nil (" " . -251) nil ("}" . -252) ((marker*) . 1) ((marker) . -1) nil (170 . 176) (" " . 169) (170 . 171) nil (163 . 165) nil ("{" . 163) ((marker*) . 1) ((marker) . -1) nil (nil rear-nonsticky nil 245 . 246) (nil fontified nil 158 . 246) (158 . 246) nil ("." . -158) nil ("m" . -159) nil ("a" . -160) nil ("p" . -161) nil (158 . 162) (t 21916 50920 0 0) nil ("
  def handle_record_invalid error
    respond_to do |format|
      format.json do
        render json: {
          messages: error.record.errors.full_messages,
          errors: error.record.errors.messages },
          status: 400
      end
      format.all  { render nothing: true, status: 400 }
    end
  end
" . 165) ((marker) . -313) ((marker) . -313) ((marker) . -307) ((marker) . -307) ((marker) . -299) ((marker) . -299) ((marker) . -243) ((marker) . -243) ((marker) . -233) ((marker) . -233) ((marker) . -211) ((marker) . -211) ((marker) . -161) ((marker) . -161) ((marker) . -106) ((marker) . -106) ((marker) . -83) ((marker) . -83) ((marker) . -1) ((marker) . -1) ((marker) . -35) ((marker) . -35) ((marker) . -62) ((marker) . -62) ((marker) . -313) ((marker) . -313) 478 nil ("  rescue_from ActiveRecord::RecordInvalid, with: :handle_record_invalid

" . 88) ((marker) . -72) ((marker) . -72) ((marker) . -73) ((marker) . -73) ((marker) . -73) ((marker) . -73) 161 nil ("  protect_from_forgery
" . 51) ((marker) . -23) ((marker) . -23) ((marker) . -23) ((marker) . -23) ((marker) . -23) 74 nil (29 . 50) ("Appli" . -29) ((marker*) . 5) nil (30 . 34) nil ("c" . -30) nil (29 . 31) nil ("ActionController::Base" . 29) ((marker) . -22) (t 21915 32700 0 0) nil (245 . 255) nil (225 . 245) nil (220 . 225) nil (201 . 220) (202 . 204) (201 . 205) nil (198 . 201) nil (196 . 198) ("  " . 195) (197 . 198) nil (194 . 197) (t 21915 32684 0 0) nil (98 . 99) nil ("b" . 98) nil (96 . 97) nil ("t" . 96) (t 21915 32665 0 0) nil (107 . 110) nil ("y" . -107) nil ("i" . -108) nil (108 . 109) nil ("i" . -108) nil ("e" . -109) nil ("s" . -110) nil (108 . 111) nil ("e" . -108) nil ("s" . -109) nil (96 . 110) nil ("g" . -96) nil ("l" . -97) nil ("o" . -98) nil ("b" . -99) nil ("a" . -100) nil ("l" . -101) nil ("_" . -102) nil (101 . 103) nil ("k" . -101) nil (96 . 102) nil ("c" . -96) nil ("a" . -97) nil (97 . 98) nil (77 . 97) nil (74 . 77) (t 21915 32637 0 0) nil ("Controller" . 51) nil (29 . 51) ("Action" . -29) nil (29 . 35) nil ("n" . 29) nil ("o" . 29) nil ("i" . 29) nil ("t" . 29) nil ("a" . 29) nil ("c" . 29) nil ("i" . 29) nil ("l" . 29) nil ("p" . 29) nil ("p" . 29) nil ("A" . 29) nil (":" . 29) nil (":" . 29) (t 21915 32619 0 0) nil (nil rear-nonsticky nil 472 . 473) (nil fontified nil 53 . 473) (53 . 473) (t 21915 32585 0 0) nil (56 . 57) 1 nil (46 . 52) nil (26 . 46) nil (7 . 26) ("Web:" . -7) nil (7 . 11) nil (" " . -7) nil (6 . 8) (6 . 10) nil (1 . 6) (t . -1)))
