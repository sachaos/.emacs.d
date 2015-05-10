;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; smartparens.el settings ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(smartparens-global-mode t)
(show-smartparens-global-mode t)

;; elisp
;; ERB pair
(sp-with-modes 'web-mode
  (sp-local-pair "<% " " %>")
  (sp-local-pair "<%= " " %>"))
