;;; package ---  setup-c.el
;;; Commentary:
;;; setup-c.el -*- lexical-binding: t; -*-

;;; Code:

(defun my:ac-c-headers-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))

(add-hook 'c++-mode-hook 'my:ac-c-headers-init)
(add-hook 'c-mode-hook 'my:ac-c-headers-init)


(provide 'setup-c)
;;; setup-c ends here
