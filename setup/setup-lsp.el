;;; package ---  setup-lsp.el
;;; Commentary:
;;; setup-lsp.el -*- lexical-binding: t; -*-

;;; Code:

;; if you want to change prefix for lsp-mode keybindings.
;;(setq lsp-keymap-prefix "s-l")
(require 'lsp-mode)

(with-eval-after-load 'lsp-mode
  (require 'dap-chrome)
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (yas-global-mode))

(add-hook 'js2-mode-hook #'lsp)
(add-hook 'rjsx-mode-hook #'lsp)
(add-hook 'web-mode-hook #'lsp)
(add-hook 'rust-mode-hook #'lsp)

(provide 'setup-lsp)            ;
;;; setup-lsp ends here 
