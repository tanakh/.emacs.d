;; haskell-mode

(require 'ghc)

(autoload 'ghc-init "ghc" nil t)

(add-hook 'haskell-mode-hook
          (lambda ()
            (turn-on-haskell-indentation)
            (turn-on-haskell-decl-scan)
            (ghc-init)))

(eval-after-load "haskell-mode"
       '(progn
          (define-key haskell-mode-map (kbd "C-,") 'haskell-move-nested-left)
          (define-key haskell-mode-map (kbd "C-.") 'haskell-move-nested-right)))

;; (add-hook 'haskell-mode-hook 'structured-haskell-mode)
;; (set-face-background 'shm-current-face "#eee8d5")
;; (set-face-background 'shm-quarantine-face "lemonchiffon")
