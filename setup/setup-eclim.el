;;; package ---  setup-eclim.el
;;; Commentary:
;;; setup-eclim.el -*- lexical-binding: t; -*-

;;; Code:

;; eclim!
(require 'eclim)
(add-hook 'java-mode-hook 'eclim-mode)
(setq eclim-executable "/Users/jackkillilea/.p2/pool/plugins/org.eclim_2.8.0/bin/eclim")

(provide 'setup-eclim)
;;; setup-eclim ends here
