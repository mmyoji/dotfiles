;;; package --- Emacs config files

;;; Mac settings
(when (eq system-type 'darwin)
  (setq default-input-method "MacOSX"))

(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)

;;; Package Settings
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;; Activate this when you install this file for the first time.
;; (package-refresh-contents)

(defvar my/favorite-packages
  '(
    auto-complete
    undohist
    yasnippet
    ag wgrep-ag
    anything
    neotree
    smartparens
    flycheck flycheck-color-mode-line s jump pkg-info
    ruby-electric ruby-block rinari rhtml-mode rubocop
    elixir-mode
    haskell-mode
    go-mode
    terraform-mode
    web-mode emmet-mode
    scss-mode
    slim-mode markdown-mode haml-mode
    coffee-mode flymake-coffee
    yaml-mode
    json-mode
    ))

(dolist (package my/favorite-packages)
  (unless (package-installed-p package)
    (package-install package)))

(setq inhibit-startup-message t)

;; Speed up for drawing due to not respond to languages that read right to left
(setq-default bidi-display-reordering nil)

;; Inactivate 'splash screen'
(setq inhibit-splash-screen t)

;; Don't remember the same hisotry
(setq history-delete-duplicates t)

;; C-u C-SPC C-SPC ...でどんどん過去のマークを遡る
(setq set-mark-command-repeat-pop t)

(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
;; (define-key global-map (kbd "C-t") 'other-window)

;; Arrange the name of files when the files have the same name in different directories
(require 'uniquify)
;; filename<dir> style
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "*[^*]+*")

;; Remember the place to open a file
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory "places"))

;; Highlight responding parenthesis
(show-paren-mode 1)

;; Don't use TAB for indentation
(setq-default indent-tabs-mode nil)
;; Highlight trailing whitespace
(setq-default show-trailing-whitespace t)
(add-hook 'font-lock-mode-hook
          (lambda ()
            (font-lock-add-keywords
             nil
             '(("\t" 0 'trailing-whitespace prepend))
             )
            )
          )

;; Keep mini-buffer history at opening Emacs next
(savehist-mode 1)

(display-time)

(line-number-mode 1)
(column-number-mode 1)

;; Decrease GC
(setq gc-cons-threshold (* 10 gc-cons-threshold))

;; Increase logs lines
(setq message-log-max 10000)

;; Keep many history
(setq history-length 1000)

;; Remove menu-bar, tool-bar and scroll-bar
(menu-bar-mode -1)

;; Don't make '*~' backup files
(setq make-backup-files nil)

;; Ignore upper-case and lower-case input in mini buffer
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; wdired.el
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

(require 'ido)
(ido-mode t)

;; Display line number on the left side.
(require 'linum)
(global-linum-mode)
(setq linum-format "%3d  ")

(require 'auto-complete)
(global-auto-complete-mode t)

(when (require 'undohist nil t)
  (undohist-initialize))

(require 'yasnippet)

(require 'ag)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-highlight-search t)
 '(ag-reuse-buffers (quote nil))
 '(ag-reuse-window (quote nil))
 '(js-indent-level 2)
 '(terraform-indent-level 2))
(require 'wgrep-ag)
(autoload 'wgrep-ag-setup "wgrep-ag")
(add-hook 'ag-mode-hook 'wgrep-ag-setup)
(define-key ag-mode-map (kbd "r") 'wgrep-change-to-wgrep-mode)
(global-set-key [(super m)] 'ag)
(defun my/filter (condp lst)
  (delq nil
        (mapcar (lambda (x) (and (funcall condp x) x)) lst)))
(defun my/get-buffer-window-list-regexp (regexp)
  "Return list of windows whose buffer name matches regexp."
  (my/filter #'(lambda (window)
              (string-match regexp
               (buffer-name (window-buffer window))))
          (window-list)))
(global-set-key [(super m)]
                #'(lambda ()
                    (interactive)
                    (call-interactively 'ag)
                    (select-window ; select ag buffer
                     (car (my/get-buffer-window-list-regexp "^\\*ag ")))))
;; anything.el
(require 'anything-startup)
(define-key global-map (kbd "C-x C-a") 'anything)

;; Apply emacs's copy to MacOSX's pbcopy
(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))
(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))
(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

;; view folders tree structure
(require 'neotree)


;;; Programming Languages ;;;

;;; smartparens ;;;
(require 'smartparens)
(smartparens-global-mode t)


;;; Flycheck ;;;
(require 'flycheck)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
(add-hook 'ruby-mode-hook 'flycheck-mode)
(add-hook 'elixir-mode-hook 'flycheck-mode)

(require 'flycheck-color-mode-line)
(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))


;;; Server side ;;;

;; ruby ;;
(require 'ruby-mode)
;; Stop inserting magick comment
(defun ruby-mode-set-encoding () nil)
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source file" t)
(add-to-list 'auto-mode-alist '("\\.rb$latex " . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.json.jbuilder$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rabl$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Berksfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
;; Automatically insert "do..end", etc.
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
  (sp-local-pair "fn" "end"
                 :when '(("SPC" "RET"))
                 :actions '(insert navigate))
  (sp-local-pair "do" "end"
                 :when '(("SPC" "RET"))
                 :post-handlers '(sp-ruby-def-post-handler)
                 :actions '(insert navigate)))
(add-hook 'elixir-mode-hook 'auto-complete-mode)

;; Haskell ;;
(require 'haskell-mode)
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)


;; Golang ;;
(require 'go-mode)
(add-to-list 'auto-mode-alist '("\\.go$" . go-mode))
(add-hook 'go-mode-hook
  (lambda ()
    (setq-default)
    (setq tab-width 2)
    (setq standard-indent 2)
    (setq indent-tabs-mode nil)))

;; terraform ;;
(require 'terraform-mode)
(add-to-list 'auto-mode-alist '("\\.tf$" . terraform-mode))
(add-to-list 'auto-mode-alist '("\\.tfvars$" . terraform-mode))


;;;  Front end ;;;

;; HTML/CSS ;;
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.ejs$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ejs.jst$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; turn on flychecking globally
(add-hook 'after-init-hook 'global-flycheck-mode)
;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint)))
;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)
;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(json-jsonlist)))
;; adjust indents for web-mode to 2 spaces
(defun my-web-mode-hook ()
  "Hooks for Web mode. Adjust indents"
  ;;; http://web-mode.org/
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; js
(add-to-list 'auto-mode-alist '("\\.es6$" . javascript-mode))

(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; markup
(add-hook 'css-mode-hook 'emmet-mode) ;; css
(add-hook 'nxml-mode-hook 'emmet-mode) ;; xml
(add-hook 'web-mode-hook 'emmet-mode) ;; web-mode
(add-hook 'emmet-mode-hook (lambda() (setq emmet-indentation 2)))
(setq emmet-mode-cursor-between-quates t)


;; SCSS ;;
(require 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(defun scss-custom()
  "scss-mode-hook"
  (and
   (set (make-local-variable 'css-indent-offset) 2)
   (set (make-local-variable 'scss-compile-at-save) nil)))
(add-hook 'scss-mode-hook '(lambda() (scss-custom)))

(require 'slim-mode)
(add-to-list 'auto-mode-alist '("\\.slim$" . slim-mode))

(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))


;; coffee ;;
(require 'coffee-mode)
(require 'flymake-coffee)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.coffee.erb$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile$" . coffee-mode))
(defun coffee-custom ()
  "coffee-mode-hook"
  (and (set (make-local-variable 'tab-width) 2)
       (set (make-local-variable 'coffee-tab-width) 2)))
(add-hook 'coffee-mode-hook
          '(lambda () (coffee-custom)))
(add-hook 'coffee-mode-hook 'flymake-coffee-load)
(add-hook 'coffee-mode-hook 'auto-complete-mode)
(setq flymake-coffee-coffeelint-configuration-file
      (expand-file-name "~/.coffeelint.json"))


;;; Others ;;;

(when (require 'yaml-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode)))

(require 'json-mode)
(add-to-list 'auto-mode-alist '("\\.tss$" . json-mode))
(add-hook 'json-mode-hook '(lambda() (setq js-indent-level 2)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(erb-face ((t (:background "color-20"))))
 '(fringe ((t (:background "color-20")))))

(provide 'init)
;;; init.el ends here
(put 'upcase-region 'disabled nil)
