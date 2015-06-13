(defun describe-face-at-point ()
  "Return face used at point."
  (interactive)
  (message "%s" (get-char-property (point) 'face)))

;; web-modeのtagの色
(require 'web-mode)
(set-face-foreground 'web-mode-html-tag-face "brightblue")
(set-face-foreground 'web-mode-html-tag-bracket-face "brightblue")
