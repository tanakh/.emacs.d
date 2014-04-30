;; packages to install
(defvar my/packages
  '(init-loader
    anything
    auto-complete
    powerline
    quickrun
    haskell-mode
    shm
    ghc
    markdown-mode
    flymake
    flymake-cursor
    flycheck
    magit
    )
  "A list of packages to install from MELPA at launch.")

;; init package.el
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; install packages
(dolist (package my/packages)
  (when (or (not (package-installed-p package)))
    (package-install package)))

;; load init scripts
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
(setq init-loader-show-log-after-init t)
