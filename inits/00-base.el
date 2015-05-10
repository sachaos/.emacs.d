;; タブ幅を変更
(setq default-tab-width 4)

;; オートインデントでスペースを使う
(setq-default indent-tabs-mode nil)

;; delete selection mode on
(delete-selection-mode 1)

;; 行番号を表示
(global-linum-mode t)
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))
(setq linum-format "%4d|")
(set-face-foreground 'linum "cyan")

;; .#で始まるファイルをつくらないようにする
(setq create-lockfiles nil)

;; メニューバー、ツールバーの非表示
(menu-bar-mode 0)

;; 警告音の代わりに画面フラッシュ
(setq visible-bell t)

;; カーソル行に下線を表示
(setq hl-line-face 'underline)
(global-hl-line-mode)

;; file名の補完で大文字と小文字を区別しない
(setq completion-ignore-case t)

;; buffer自動再読み込み
(global-auto-revert-mode 1)

;; avoid "Symbolic link to SVN-controlled source file; follow link? (yes or no)"
(setq vc-follow-symlinks t)

;; 同名ファイルのバッファ名の識別文字列を変更する
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
