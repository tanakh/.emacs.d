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
    idris-mode
    markdown-mode
    review-mode
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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(idris-interpreter-flags nil)
 '(idris-interpreter-path "~/.cabal/bin/idris")
 '(idris-load-file-success-hook (quote (idris-list-metavariables)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
