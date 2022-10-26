;;; package ---  setup-javascript.el
;;; Commentary:
;;; setup-javascript.el -*- lexical-binding: t; -*-

;;; Code:

;; (defun setup-tide-mode ()
;;   (interactive)
;;   (tide-setup)
;;   (flycheck-mode +1)
;;   (setq flycheck-check-syntax-automatically '(save mode-enabled))
;;   (eldoc-mode +1)
;;   (tide-hl-identifier-mode +1)
;;   (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

;; (add-hook 'web-mode-hook
;;           (lambda ()
;;             (when (string-equal "jsx" (file-name-extension buffer-file-name))
;;               (setup-tide-mode))
;;             (when (string-equal "js" (file-name-extension buffer-file-name))
;;               (setup-tide-mode))
;;             (when (string-equal "json" (file-name-extension buffer-file-name))
;;               (json-mode))
;;             ))

;; flycheck jazz
(flycheck-add-mode 'javascript-eslint 'web-mode)
(flycheck-add-mode 'javascript-eslint 'jsx-mode)
(flycheck-add-mode 'javascript-eslint 'json-mode)
(flycheck-add-mode 'javascript-eslint 'javascript-mode)

;; formats the buffer before saving
;;(add-hook 'before-save-hook 'tide-format-before-save)
;;(add-hook 'typescript-mode-hook #'setup-tide-mode)
;;(add-hook 'js2-mode-hook #'setup-tide-mode)
;;(add-hook 'rjsx-mode-hook #'setup-tide-mode)
;;(add-hook 'web-mode-hook #'setup-tide-mode)

;; prettier js hook for js
;;(add-hook 'typescript-mode-hook #'prettier-mode)
;;(add-hook 'web-mode-hook #'prettier-mode)
;;(add-hook 'rjsx-mode-hook #'prettier-mode)

;;(setq-default flycheck-disabled-checkers (append flycheck-disabled-checkers '(tsx-tide)))
;; configure javascript-tide checker to run after your default javascript checker
;;(flycheck-add-next-checker 'javascript-eslint)

;;; setup-javascript ends here
(provide 'setup-javascript) 
