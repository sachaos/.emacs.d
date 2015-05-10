;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; autocomplete settings ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(ac-config-default)
(add-to-list 'ac-modes 'text-mode)         ;; text-modeでも自動的に有効にする
(add-to-list 'ac-modes 'fundamental-mode)  ;; fundamental-mode
(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'yatex-mode)
(ac-set-trigger-key "TAB")
(setq ac-use-menu-map t)       ;; 補完メニュー表示時にC-n/C-pで補完候補選択
(setq ac-use-fuzzy t)          ;; 曖昧マッチ
(global-auto-complete-mode t)

;; 補完ウィンドウ内のキーバインド
(define-key ac-completing-map (kbd "C-n") 'ac-next) ;次の変換候補にカーソルを移動する.
(define-key ac-completing-map (kbd "C-p") 'ac-previous) ;前の変換候補にカーソルを移動する．
(define-key ac-completing-map (kbd "ESC") 'ac-stop) ;現在の変換候補の表示をやめる．
(define-key ac-completing-map "\C-m" nil)
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-m" 'ac-complete)
