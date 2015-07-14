;;;;;;;;;;;;;;;;
;; Keybinding ;;
;;;;;;;;;;;;;;;;

;; backward delete by C-h
(global-set-key (kbd "C-h")     'backward-delete-char)

;; help command
(global-set-key (kbd "M-?")     'help-command)

;; expand region
(global-set-key (kbd "C-o")     'er/expand-region)
(global-set-key (kbd "C-M-o")   'er/contract-region)

;; popwin prefix
(global-set-key (kbd "C-x C-p") popwin:keymap)

;; custom C-a and C-e
(global-set-key (kbd "C-a")     'beginning-of-visual-indented-line)
(global-set-key (kbd "C-e")     'end-of-visual-line)

;; color describe
(global-set-key (kbd "C-c c")   'describe-face-at-point)

;; grep helm git
(global-set-key (kbd "C-c g")   'helm-git-grep)

;; helm
(global-set-key (kbd "M-x")     'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-ls-git-ls-find-files)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "M-y")     'helm-show-kill-ring)
(global-set-key (kbd "C-c i")   'helm-imenu)
(global-set-key (kbd "C-x b")   'helm-buffers-list)
