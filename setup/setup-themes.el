;;; package ---  setup-themes.el
;;; Commentary:
;;; setup-themes.el -*- lexical-binding: t; -*-

;;; Code:

;; testing themes
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/caroline-theme/")
;;(add-to-list 'load-path "~/.emacs.d/themes/caroline-theme/")
;;(load-theme 'caroline t)

;; ;; load theme customization
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/moe-theme/") ;; theme loading
;; (add-to-list 'load-path "~/.emacs.d/themes/moe-theme/")
;;(require 'moe-theme)
;; (setq moe-theme-highlight-buffer-id nil)
;;(moe-dark)

;; solarized theme
;; make the fringe stand out from the background
(setq solarized-distinct-fringe-background t)

;; Don't change the font for some headings and titles
(setq solarized-use-variable-pitch nil)

;; make the modeline high contrast
(setq solarized-high-contrast-mode-line t)

;; Use less bolding
(setq solarized-use-less-bold t)

;; Use more italics
(setq solarized-use-more-italic t)

;; Use less colors for indicators such as git:gutter, flycheck and similar
(setq solarized-emphasize-indicators nil)

;; Don't change size of org-mode headlines (but keep other size-changes)
;;(setq solarized-scale-org-headlines nil)

;; Avoid all font-size changes
;;(setq solarized-height-minus-1 1.0)
;;(setq solarized-height-plus-1 1.0)
;;(setq solarized-height-plus-2 1.0)
;;(setq solarized-height-plus-3 1.0)
;;(setq solarized-height-plus-4 1.0)

;; solarized theme
(load-theme 'solarized-light t)

;; cherrys
;;(load-theme 'cherry-blossom t)

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") ;; theme loading
;;(load-theme 'wintermute t)

;;cyberpunk theme
;;(load-theme 'cyberpunk t)

;;cyberpunk 2019
;;(load-theme 'cyberpunk-2019 t)

;;melancholy theme
;;(load-theme 'melancholy t)

;; dracula theme
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; (load-theme 'dracula t)


(provide 'setup-themes)
;;; setup-themes ends here
