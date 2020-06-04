;;; package ---  setup-javascript.el
;;; Commentary:
;;; setup-javascript.el -*- lexical-binding: t; -*-

;;; Code:

;; ---- JAVASCRIPT PLUGINS -----

(defun enable-minor-mode (my-pair)
  "Enable minor mode if filename match the regexp.  MY-PAIR is a cons cell (regexp . minor-mode)."
  (if (buffer-file-name)
      (if (string-match (car my-pair) buffer-file-name)
	  (funcall (cdr my-pair)))))

(add-hook 'js2-mode-hook #'smartparens-mode)
(add-hook 'js-mode-hook 'js2-minor-mode)

(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
	      (append flycheck-disabled-checkers
		      '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)
(flycheck-add-mode 'javascript-eslint 'js-mode)
(flycheck-add-mode 'javascript-eslint 'rjsx-mode)

;; (defun setup-tide-mode ()
;;   ;; "Enable Tide mode stuff."
;;   (interactive)
;;   (tide-setup)
;;   (flycheck-mode +1)
;;   (setq flycheck-check-syntax-automatically '(save mode-enabled))
;;   (eldoc-mode +1)
;;   (tide-hl-identifier-mode +1))


;; formats the buffer before saving
;; (add-hook 'before-save-hook 'tide-format-before-save)
;; (add-hook 'js2-mode-hook #'setup-tide-mode)
;; (add-hook 'rjsx-mode #'setup-tide-mode)

;;(add-hook 'web-mode-hook
;;          (lambda ()
;;            (when (string-equal "tsx" (file-name-extension buffer-file-name))
;;              (setup-tide-mode))))
;; enable typescript-tslint checker
;;(flycheck-add-mode 'typescript-tslint 'web-mode)

;; JSX help 
;;(add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))
;;(add-hook 'rjsx-mode-hook
;;          (lambda ()
;;            (when (string-equal "jsx" (file-name-extension buffer-file-name))
;;              (setup-tide-mode))))
;; enable typescript-tslint checker
;;(flycheck-add-mode 'typescript-tslint 'web-mode)

;; ---- END JS PLUGINS ----- ;;


(provide 'setup-javascript)
;;; setup-javascript ends here
