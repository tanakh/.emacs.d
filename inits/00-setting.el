(custom-set-variables '(inhibit-startup-screen t))

(setq-default indicate-empty-lines t)
(setq-default indicate-buffer-boundaries 'right)
(setq-default show-trailing-whitespace t)
(setq-default tab-width 2 indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq require-final-newline t)
;; (global-whitespace-mode t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq completion-ignore-case t)
(global-auto-revert-mode t)

(global-hl-line-mode)

(cua-mode +1)
