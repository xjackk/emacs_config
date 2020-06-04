;;; package ---  setup-company.el
;;; Commentary:
;;; setup-company.el -*- lexical-binding: t; -*-

;;; Code:

;; Company Mode
(require 'company-emacs-eclim)

(company-emacs-eclim-setup)

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

(provide 'setup-company)
;;; setup-company ends here

