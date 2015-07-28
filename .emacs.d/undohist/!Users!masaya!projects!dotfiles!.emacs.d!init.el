
((digest . "4d66e2176962cdfd06b69bad50da235a") (undo-list nil ("ttt" . 6370) nil ("//" . 6373) nil (6373 . 6375) nil (6370 . 6373) nil (6353 . 6412) nil (6353 . 6354) (t 21932 25797 0 0) nil ("
" . 6353) ((marker . 6413) . -1) ((marker . 6413) . -1) nil ("                 :post-handlers '(sp-ruby-def-post-handler)" . 6353) (t 21932 24941 0 0) nil (";; " . -6413) (";; " . -6353) (";; " . -6313) (";; " . -6285) (";; " . -6239) (";; " . -6199) (";; " . -6171) (";; " . -6141) 6484 (t 21932 24897 0 0) nil (6434 . 6437) (6371 . 6374) (6328 . 6331) (6297 . 6300) (6248 . 6251) (6205 . 6208) (6174 . 6177) (6141 . 6144) 6460 (t 21932 24803 0 0) nil (4557 . 6353) nil ("de t)


;;; Flycheck ;;;
(require 'flycheck)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
(add-hook 'ruby-mode-hook 'flycheck-mode)

(require 'flycheck-color-mode-line)
(eval-after-load \"flycheck\"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))


;;; Server side ;;;

;; ruby ;;
(require 'ruby-mode)
;; Stop inserting magick comment
(defun ruby-mode-set-encoding () nil)
(autoload 'ruby-mode \"ruby-mode\" \"Mode for editing ruby source file\" t)
(add-to-list 'auto-mode-alist '(\"\\\\.rb$latex \" . ruby-mode))
(add-to-list 'auto-mode-alist '(\"\\\\.json.jbuilder$\" . ruby-mode))
(add-to-list 'auto-mode-alist '(\"Capfile$\" . ruby-mode))
(add-to-list 'auto-mode-alist '(\"Gemfile$\" . ruby-mode))
(add-to-list 'auto-mode-alist '(\"Guardfile$\" . ruby-mode))
(add-to-list 'auto-mode-alist '(\"Vagrantfile$\" . ruby-mode))
(add-to-list 'auto-mode-alist '(\"Berksfile$\" . ruby-mode))
(add-to-list 'auto-mode-alist '(\"\\\\.gemspec$\" . ruby-mode))
(add-to-list 'auto-mode-alist '(\"Rakefile$\" . ruby-mode))
;; Automatically insert \"do..end\", etc.
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
(setq ruby-electric-expand-delimiters-list nil)
;; Highlight matching block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; Ruby on Rails
(require 'rinari)
(add-hook 'ruby-mode-hook 'rinari-minor-mode)
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
          (lambda () (rinari-launch)))

;; Static analize
(require 'rubocop)
(add-hook 'ruby-mode-hook 'rubocop-mode)

;; elixir
(require 'elixir-mode)
(sp-with-modes '(elixir-mode)
  (sp-local-pair \"fn\" \"end\"
                 :when '((\"SPC\" \"RET\"))
                 :actions '(insert navigate))
  (sp-local-pair \"do\" \"end\"
                 :when '((\"SPC\" \"RET\"))
" . 4557) (t 21932 24803 0 0) nil (4507 . 4511) nil (4504 . 4507) nil ("s" . -4504) nil ("e" . -4505) nil ("n" . -4506) nil (4505 . 4507) nil ("n" . -4505) nil ("e" . -4506) nil (4501 . 4507) nil (" " . -4501) nil ("p" . -4502) nil ("a" . -4503) nil (4495 . 4504) (t 21932 24791 0 0) nil (4538 . 4546) nil ("e" . 4531) nil (4520 . 4533) nil (" " . -4526) nil (4519 . 4527) nil (4518 . 4519) nil (4511 . 4518) nil ("_" . -4511) nil (4506 . 4512) nil ("m" . -4506) nil (4500 . 4507) nil ("y" . -4500) nil ("i" . -4501) nil (4496 . 4502) nil (4495 . 4496) nil (";" . -4495) nil (4492 . 4496) nil (4490 . 4492) (t 21932 24601 0 0) nil (6388 . 6389) nil (6341 . 6358) ("         " . -6341) (6281 . 6298) ("         " . -6281) (6241 . 6258) ("         " . -6241) (6167 . 6184) ("         " . -6167) (6127 . 6144) ("         " . -6127) 6348 nil (nil rear-nonsticky nil 6346 . 6347) (nil fontified nil 6069 . 6347) (6069 . 6347) nil ("(add-to-list 'elixir-mode-hook
             (defun auto-activate-ruby-end-mode-for-elixir-mode ()
               (set (make-variable-buffer-local 'ruby-end-expand-keywords-before-re)
                    \"\\\\(?:^\\\\|\\\\s-+\\\\)\\\\(?:do\\\\)\")
               (set (make-variable-buffer-local 'ruby-end-check-statement-modifiers) nil)
               (ruby-end-mode +1)))
" . 6069) 6429 (t 21932 24268 0 0) nil (6393 . 6408) ("                              " . -6393) 6444 nil (6428 . 6443) nil (6408 . 6428) nil (6393 . 6408) (6303 . 6318) ("                              " . -6303) (6407 . 6408) nil (6398 . 6407) nil (6378 . 6398) nil (6358 . 6378) nil (6338 . 6358) nil (6318 . 6338) nil (6303 . 6318) (6252 . 6272) ("                                        " . -6252) (6322 . 6323) nil (6312 . 6322) nil (6292 . 6312) nil (6272 . 6292) nil (6252 . 6272) (6167 . 6182) ("                              " . -6167) (6266 . 6267) nil (6262 . 6266) nil (6242 . 6262) nil (6222 . 6242) nil (6202 . 6222) nil (6182 . 6202) nil (6167 . 6182) (6100 . 6113) ("                          " . -6100) (6179 . 6180) nil (6173 . 6179) nil (6153 . 6173) nil (6133 . 6153) nil (6113 . 6133) nil (6099 . 6113) nil (6089 . 6099) nil (6069 . 6089) nil (6068 . 6069) (t 21927 5907 0 0)))
