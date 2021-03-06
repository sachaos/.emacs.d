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

;; file名の補完で大文字と小文字を区別しない
(setq completion-ignore-case t)

;; buffer自動再読み込み
(global-auto-revert-mode 1)

;; avoid "Symbolic link to SVN-controlled source file; follow link? (yes or no)"
(setq vc-follow-symlinks t)

;; 同名ファイルのバッファ名の識別文字列を変更する
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; y or p
(fset 'yes-or-no-p 'y-or-n-p)

;; 行末の空白をハイライト
(setq-default show-trailing-whitespace t)

;; ロックされていた機能
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
