;;; package ---  setup-projectile.el
;;; Commentary:
;;; setup-projectile.el -*- lexical-binding: t; -*-

;;; Code:

(require 'projectile)
(require 'helm-projectile)
(helm-projectile-on)
(define-key projectile-mode-map (kbd "s-Y") 'projectile-command-map)
(projectile-mode +1)

(provide 'setup-projectile)
;;; setup-projectile ends here


