;;; package ---  setup-javascript.el
;;; Commentary:
;;; setup-javascript.el -*- lexical-binding: t; -*-

;;; Code:

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)


(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))

(add-hook 'web-mode-hook
	  (lambda ()
	    (when (string-equal "jsx" (file-name-extension buffer-file-name))
	      (setup-tide-mode))
	    (when (string-equal "js" (file-name-extension buffer-file-name))
	      (setup-tide-mode))
	    (when (string-equal "tsx" (file-name-extension buffer-file-name))
	      (setup-tide-mode))
	    ))

;; configure jsx-tide checker to run after your default jsx checker
;;(flycheck-add-mode 'javascript-eslint 'web-mode)
;;(flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)
(add-hook 'js2-mode-hook #'setup-tide-mode)
(add-hook 'rjsx-mode-hook #'setup-tide-mode)
(add-hook 'web-mode-hook #'setup-tide-mode)

(setq-default flycheck-disabled-checkers (append flycheck-disabled-checkers '(tsx-tide)))
;; configure javascript-tide checker to run after your default
;;javascript checker
;;(flycheck-add-next-checker 'javascript-eslint)

;;; setup-javascript ends here
(provide 'setup-javascript)
