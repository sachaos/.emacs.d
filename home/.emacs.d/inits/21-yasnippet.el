;;;;;;;;;;;;;;;;;;;;;;;;
;; yasnippet settings ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(require 'yasnippet)

(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")

(define-key yas-minor-mode-map (kbd "C-j") 'yas-expand)

;; 既存スニペットを挿入する
(define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
;; 新規スニペットを作成するバッファを用意する
(define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
;; 既存スニペットを閲覧・編集する
(define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)
;;
(yas-global-mode 1)
