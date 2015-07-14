(defun describe-face-at-point ()
  "Return face used at point."
  (interactive)
  (message "%s" (get-char-property (point) 'face)))

;; web-modeのtagの色
(require 'web-mode)
(set-face-foreground 'web-mode-html-tag-face "brightyellow")
(set-face-foreground 'web-mode-html-tag-bracket-face "brightblue")
(set-face-foreground 'web-mode-symbol-face "yellow")
(set-face-foreground 'web-mode-html-attr-name-face "yellow")

;; undo-treeの色
(set-face-foreground 'undo-tree-visualizer-default-face "brightcyan")
(set-face-foreground 'undo-tree-visualizer-active-branch-face "white")

;; volatile-highlightsの色
(set-face-background 'vhl/default-face "color-238")

;; hiline
(defface hlline-face
  '((((class color) (background dark))
     (:background "color-234"))
    (((class color) (background light))
     (:background "color-234"))
    (t ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)
