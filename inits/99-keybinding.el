;;;;;;;;;;;;;;;;
;; Keybinding ;;
;;;;;;;;;;;;;;;;

;; backward delete by C-h
(global-set-key "\C-h" 'backward-delete-char)

;; help command
(global-set-key "\M-?" 'help-command)

;; expand region
(global-set-key (kbd "C-o") 'er/expand-region)

;; popwin prefix
(global-set-key (kbd "C-x C-p") popwin:keymap)
