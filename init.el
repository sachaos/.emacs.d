;;;;;;;;;;;;;;;;
;; Package.el ;;
;;;;;;;;;;;;;;;;
(require 'eieio)
(require 'package)
(require 'cl)

; Add package-archives
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

; Initialize
(package-initialize)

(defvar installing-package-list
  '(
    coffee-mode
    emmet-mode
    haml-mode
    git-commit-mode
    git-rebase-mode
    markdown-mode
    sass-mode
    web-mode
    yaml-mode
    lua-mode
    ac-inf-ruby
    async
    auto-compile
    auto-complete
    dash
    direx
    epl
    expand-region
    findr
    helm
    helm-ls-git
    helm-robe
    inf-ruby
    inflections
    init-loader
    jump
    magit
    packed
    paredit
    pkg-info
    popup
    popwin
    projectile
    rainbow-delimiters
    rinari
    robe
    ruby-block
    ruby-compilation
    ruby-electric
    ruby-end
    smartparens
    smooth-scroll
    undo-tree
    undohist
    yasnippet
    volatile-highlights
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))

;;;;;;;;;;;;;;;;;;;;
;; init-loader.el ;;
;;;;;;;;;;;;;;;;;;;;

(require 'init-loader)
(add-to-list 'load-path "~/.emacs.d/elisp")
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits/")
(put 'upcase-region 'disabled nil)
