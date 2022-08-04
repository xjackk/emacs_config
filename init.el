;;; package ---  Jack's emacs config -- init.el
;;; Commentary:
;; "change will come"
;; 8/14/14 ~

;;; Code:

;; Start Melpa!
(require 'setup-melpa "~/.emacs.d/setup/setup-melpa.el")
(require 'setup-general "~/.emacs.d/setup/setup-general.el")
(require 'setup-themes "~/.emacs.d/setup/setup-themes.el")
(require 'setup-extlist "~/.emacs.d/setup/setup-extlist.el")
(require 'setup-rust "~/.emacs.d/setup/setup-rust.el")
(require 'setup-loadpath "~/.emacs.d/setup/setup-loadpath.el")
(require 'setup-golden "~/.emacs.d/setup/setup-golden.el")
(require 'setup-projectile "~/.emacs.d/setup/setup-projectile.el")
(require 'setup-helm "~/.emacs.d/setup/setup-helm.el")
(require 'setup-eclim "~/.emacs.d/setup/setup-eclim.el")
(require 'setup-gradle "~/.emacs.d/setup/setup-gradle.el")
(require 'setup-company "~/.emacs.d/setup/setup-company.el")
(require 'setup-perl "~/.emacs.d/setup/setup-perl.el")
(require 'setup-org "~/.emacs.d/setup/setup-org.el")
(require 'setup-c "~/.emacs.d/setup/setup-c.el")
(require 'setup-web "~/.emacs.d/setup/setup-web.el")
(require 'setup-javascript "~/.emacs.d/setup/setup-javascript.el")
(require 'setup-variables "~/.emacs.d/setup/setup-variables.el")
(require 'setup-snippets "~/.emacs.d/setup/setup-snippets.el")
(require 'setup-keybinds "~/.emacs.d/setup/setup-keybinds.el")

;; global indenting ;;
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq js-indent-level 2)
(setq js2-basic-offset 2)

(provide 'init)
;;; init ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(column-number-mode t)
 '(compilation-message-face 'default)
 '(cperl-close-paren-offset -4)
 '(cperl-continued-statement-offset 4)
 '(cperl-indent-level 2)
 '(cperl-indent-parens-as-block t)
 '(cperl-tab-always-indent t)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   '("274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "bb5a253b1e359db941284cc74750ecf38aa93878b208919fc0f2199daaef491e" "fa2379a0b07c46efbe072f79f2555dd337012b216a5ea7934d82bc2e5c4d402e" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "13d20048c12826c7ea636fbe513d6f24c0d43709a761052adbca052708798ce3" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" default))
 '(erc-modules
   '(autojoin button completion fill irccontrols list log match menu move-to-prompt netsplit networks noncommands notify notifications readonly ring stamp track))
 '(fci-rule-color "#eee8d5")
 '(highlight-changes-colors '("#d33682" "#6c71c4"))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    '("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2")))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   '(("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100)))
 '(hl-bg-colors
   '("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342"))
 '(hl-fg-colors
   '("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3"))
 '(hl-paren-colors '("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900"))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   '("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4"))
 '(org-agenda-custom-commands
   '(("d" todo "DELEGATED" nil)
     ("c" todo "DONE|DEFERRED|CANCELLED" nil)
     ("w" todo "WAITING" nil)
     ("W" agenda ""
      ((org-agenda-ndays 21)))
     ("A" agenda ""
      ((org-agenda-skip-function
	(lambda nil
	  (org-agenda-skip-entry-if 'notregexp "\\=.*\\[#A\\]")))
       (org-agenda-ndays 1)
       (org-agenda-overriding-header "Today's Priority #A tasks: ")))
     ("u" alltodo ""
      ((org-agenda-skip-function
	(lambda nil
	  (org-agenda-skip-entry-if 'scheduled 'deadline 'regexp "
]+>")))
       (org-agenda-overriding-header "Unscheduled TODO entries: ")))))
 '(org-agenda-files '("~/Booz/todo.org"))
 '(org-agenda-ndays 7)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-start-on-weekday nil)
 '(org-deadline-warning-days 14)
 '(org-default-notes-file "~/VT/notes.org")
 '(org-fast-tag-selection-single-key 'expert)
 '(org-remember-store-without-prompt t)
 '(org-remember-templates
   '((116 "* TODO %?
  %u" "~/VT/todo.org" "Tasks")
     (110 "* %u %?" "~/VT/notes.org" "Notes")))
 '(org-reverse-note-order t)
 '(package-selected-packages
   '(lua-mode company-box prettier helm-projectile helm lsp-mode company-tern org-jira exec-path-from-shell 0blayout cargo flycheck-rust racer rust-mode melancholy-theme groovy-mode cyberpunk-2019-theme cyberpunk-theme cherry-blossom-theme projectile solarized-theme smartparens twittering-mode scss-mode tide react-snippets yasnippet-snippets rjsx-mode prettier-js js2-mode dracula-theme magit yaml-mode dockerfile-mode docker gradle-mode company-emacs-eclim ac-emacs-eclim eclim auto-complete company web-mode markdown-mode moe-theme flycheck helm-ebdb))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(remember-annotation-functions '(org-remember-annotation))
 '(remember-handler-functions '(org-remember-handler))
 '(scroll-bar-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#657b83" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#dc322f")
     (40 . "#c9485ddd1797")
     (60 . "#bf7e73b30bcb")
     (80 . "#b58900")
     (100 . "#a5a58ee30000")
     (120 . "#9d9d91910000")
     (140 . "#9595943e0000")
     (160 . "#8d8d96eb0000")
     (180 . "#859900")
     (200 . "#67119c4632dd")
     (220 . "#57d79d9d4c4c")
     (240 . "#489d9ef365ba")
     (260 . "#3963a04a7f29")
     (280 . "#2aa198")
     (300 . "#288e98cbafe2")
     (320 . "#27c19460bb87")
     (340 . "#26f38ff5c72c")
     (360 . "#268bd2")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496"))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-selection ((t (:background "#606a92" :distant-foreground "black")))))
