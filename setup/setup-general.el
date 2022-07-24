;;; package ---  setup-general.el
;;; Commentary:
;;; setup-general.el -*- lexical-binding: t; -*-

;;; Code:

;; Setting default size for emacs
(add-to-list 'default-frame-alist '(height . 90))
(add-to-list 'default-frame-alist '(width . 271))

;; stop startup message from appearing blah
(setq inhibit-startup-message t)

;; default font
(set-frame-font "Unifont 11" nil t)

;; require "modes"
;;(require 'cc-mode)
;;(require 'gnus-desktop-notify) ;; desktop notify
;;(require 'alert) ;; alerts!
;;(require 'jquery-doc)
;;(require 'web-mode) ;; web-mode!
(require 'yaml-mode) ;; yaml duh
(require 'js2-mode) ;; javascript two mode!
;;(require 'prettier-js) ;; prettier js on save!
;;(require 'csharp-mode) ;; c# mode baby
;;(require 'less-css-mode)
;;(require 'erc) ;; erc
;;(require 'ace-jump-mode)
;;(require 'coffee-mode)
;;(require 'package)
;;(require 'org)
;;(require 'org-remember)
;;(require 'moonscript-mode)
;;(require 'moonscriptrepl-mode)
;;(require 'twittering-mode)
;;(require 'alpaca)
(require 'flycheck)
;;(require 'jade-mode) ; jade mode idiot
;;(require 'use-package) ;; "Use Package" - Github Module

(display-time-mode 1) ; display time, duh!

(global-eldoc-mode -1) ;; get rid of eldoc

;; inital messsage gone
(setq initial-scratch-message nil)

;; display time in emacs
(display-time-mode 1)

(menu-bar-mode -1) ;; menu bar hide!
(toggle-scroll-bar -1) ;; menu bar hide!
(tool-bar-mode -1) ;; menu bar hide!

;; display paren matching
(show-paren-mode 1)

; autoload for markdown editing
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)

;; fixing ansi-term with zsh
(setq system-uses-terminfo nil)

(require 'eshell)
(setq eshell-path-env (concat (getenv "PATH") "/Users/jackkillilea/perl5/bin:/Users/jackkillilea/.cargo/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools"))

;; TAB SIZE
(setq tab-width 2)

(setq backup-directory-alist `(("." . "~/.filesaves")))
(setq auto-mode-alist (cons '("\\.text$" . text-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.txt$" . text-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.doc$" . text-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.awk$" . awk-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.perl$" . perl-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pl$" . perl-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.C$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cpp$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cxx$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.tcl$" . tcl-mode) auto-mode-alist))


(provide 'setup-general)
;;; setup-general ends here


