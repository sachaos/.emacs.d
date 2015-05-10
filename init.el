;;;;;;;;;;;;;;;;
;; Package.el ;;
;;;;;;;;;;;;;;;;
(require 'package)

; Add package-archives
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
; Initialize

(package-initialize)

;;;;;;;;;;;;;;;;;;;;
;; init-loader.el ;;
;;;;;;;;;;;;;;;;;;;;

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits/")
