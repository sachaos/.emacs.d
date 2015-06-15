(defun describe-face-at-point ()
  "Return face used at point."
  (interactive)
  (message "%s" (get-char-property (point) 'face)))

;; web-modeのtagの色
(require 'web-mode)
(set-face-foreground 'web-mode-html-tag-face "brightblue")
(set-face-foreground 'web-mode-html-tag-bracket-face "brightblue")

;; undo-treeの色
(set-face-foreground 'undo-tree-visualizer-default-face "brightcyan")
(set-face-foreground 'undo-tree-visualizer-active-branch-face "white")

;; volatile-highlightsの色
(set-face-background 'vhl/default-face "white")
