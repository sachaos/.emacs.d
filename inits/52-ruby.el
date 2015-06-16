;;;;;;;;;;;;;;;;;;;
;; Ruby settings ;;
;;;;;;;;;;;;;;;;;;;
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$larex" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))

(require 'ruby-end)

;; ruby-block.el -- highlight matching block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; inf-ruby
(require 'inf-ruby)
(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-eval-binding "Pry-toplevel_binding")
(add-hook 'inf-ruby-mode-hook 'ansi-color-for-comint-mode-on)

;; robe
(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)

;; fly-make
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;; helm-robe
(require 'helm-robe)
(custom-set-variables '(robe-completing-read-func 'helm-robe-completing-read))

;;;;;;;;;;;;;;;;
;; rcodetools ;;
;;;;;;;;;;;;;;;;
(require 'rcodetools)
(setq rct-find-tag-if-available nil)
(defun ruby-mode-hook-rcodetools ()
  (define-key ruby-mode-map (kbd "<C-tab>") 'rct-complete-symbol)
  (define-key ruby-mode-map (kbd "C-c C-e") 'xmp))

(add-hook 'ruby-mode-hook 'ruby-mode-hook-rcodetools)
(defun make-ruby-scratch-buffer ()
  (with-current-buffer (get-buffer-create "*ruby scratch*")
    (ruby-mode)
    (current-buffer)))
(defun ruby-scratch ()
  (interactive)
  (switch-to-buffer (make-ruby-scratch-buffer)))
