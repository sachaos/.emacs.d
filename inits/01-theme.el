;;;;;;;;;;;
;; theme ;;
;;;;;;;;;;;

;; Solarized
(if (eq system-type 'darwin)
    (add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/color-theme-solarized-20150521.2134")
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized"))


(custom-set-variables '(solarized-termcolors 256))

(setq solarized-default-background-mode 'dark)

(load-theme 'solarized t)

(defun set-background-mode (frame mode)
  (set-frame-parameter frame 'background-mode mode)
  (when (not (display-graphic-p frame))
    (set-terminal-parameter (frame-terminal frame) 'background-mode mode))
  (enable-theme 'solarized))

(defun switch-theme ()
  (interactive)
  (let ((mode  (if (eq (frame-parameter nil 'background-mode) 'dark)
                   'light 'dark)))
    (set-background-mode nil mode)))

(add-hook 'after-make-frame-functions
          (lambda (frame) (set-background-mode frame solarized-default-background-mode)))

(set-background-mode nil solarized-default-background-mode)

;; カーソル行
(defface hlline-face
  '((((class color) (background dark))
     (:background "black"))
    (((class color) (background light))
     (:background "black"))
    (t ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)

