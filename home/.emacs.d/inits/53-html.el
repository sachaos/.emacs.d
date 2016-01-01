;;;;;;;;;;;;;;;;;;;
;; html settings ;;
;;;;;;;;;;;;;;;;;;;

;; erb, htmlだったらweb-modeにする。
(add-to-list 'auto-mode-alist '("\\.tag\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;; indent
(setq web-mode-markup-indent-offset 2)

;; web-modeの時emmet-modeを常にonにする
(add-hook 'web-mode-hook 'emmet-mode)

;; 自動でindentされるのをやめる
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indent-after-insert nil)))

;; 展開されたあと、""の間にカーソルが行くようにする
(setq emmet-move-cursor-between-quotes t)
