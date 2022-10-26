;;; package ---  setup-rust.el
;;; Commentary:
;;; setup-rust.el -*- lexical-binding: t; -*-

;;; Code:

(require 'rust-mode)
(require 'rustic)
;;(require 'cargo)
;;(with-eval-after-load 'rust-mode
;;  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
;;(require 'racer)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rustic-mode))

;;(add-hook 'rust-mode-hook #'racer-mode)
;;(add-hook 'racer-mode-hook #'company-mode)
;;(setq racer-eldoc-timeout .2)

(provide 'setup-rust)
;;; setup-rust ends here
