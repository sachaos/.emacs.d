;;;;;;;;;;;;;;;;
;; Keybinding ;;
;;;;;;;;;;;;;;;;

;; backward delete by C-h
(global-set-key "\C-h" 'backward-delete-char)

;; help command
(global-set-key "\M-?" 'help-command)

;; expand region
(global-set-key (kbd "C-o") 'er/expand-region)
(global-set-key (kbd "C-M-o") 'er/contract-region)

;; popwin prefix
(global-set-key (kbd "C-x C-p") popwin:keymap)

;; custom C-a and C-e
(global-set-key "\C-a" 'beginning-of-visual-indented-line)
(global-set-key "\C-e" 'end-of-visual-line)
