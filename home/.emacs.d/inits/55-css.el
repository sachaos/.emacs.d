;;;;;;;;;;;;;;;;;;
;; CSS settings ;;
;;;;;;;;;;;;;;;;;;

(add-to-list 'auto-mode-alist '("\\.scss" . css-mode))

(add-hook 'css-mode-hook
          (lambda ()
            (setq css-indent-offset 2)
            ))
