;;; package ---  setup-rust.el
;;; Commentary:
;;; setup-rust.el -*- lexical-binding: t; -*-

;;; Code:

(require 'rust-mode)
(require 'cargo)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
(require 'racer)

(setq racer-rust-src-path "/Users/jackkillilea/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src")
(add-hook 'rust-mode-hook 'cargo-minor-mode)

(add-hook 'rust-mode-hook #'racer-mode)
;;(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(provide 'setup-rust)
;;; setup-rust ends here
