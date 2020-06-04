;;; package ---  setup-docker.el
;;; Commentary:
;;; setup-docker.el -*- lexical-binding: t; -*-

;;; Code:

;; Dockerfile Mode
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(provide 'setup-docker)
;;; setup-grade ends here

