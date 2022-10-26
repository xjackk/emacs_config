;;; package ---  setup-company.el
;;; Commentary:
;;; setup-company.el -*- lexical-binding: t; -*-

;;; Code:

(require 'company)
;; Company Mode
;;(require 'company-emacs-eclim)
;;(require 'company-box)
;;(add-hook 'company-mode-hook 'company-box-mode)

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

(setq company-idle-delay 0.01)

(provide 'setup-company)
;;; setup-company ends here

