;;; package ---  setup-web.el
;;; Commentary:
;;; setup-web.el -*- lexical-binding: t; -*-

;;; Code:

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))

(provide 'setup-web)
;;; setup-web ends here