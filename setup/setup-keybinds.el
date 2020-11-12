;;; package ---  setup-keybinds.el
;;; Commentary:
;;; setup-keybinds.el -*- lexical-binding: t; -*-

;;; Code:

;; Custom Keybinds (Command is super key)
(global-set-key (kbd "s-<right>") 'move-end-of-line ) ; Command + Right Arrow // End of Line
(global-set-key (kbd "s-<left>") 'move-beginning-of-line ) ; Command + Left Arrow // Beginning of Line
(global-set-key (kbd "M-s-r") 'previous-multiframe-window) ; Command + "r" // previous window
(global-set-key (kbd "s-l") 'list-buffers ) ; Command + "l" // Buffer list
(global-set-key (kbd "H-j") 'switch-to-buffer-other-window ) ; FN + "J" // Swap Buffers
(global-set-key (kbd "s-k") 'delete-window ) ; FN + "k" // Kill window
(global-set-key (kbd "H-k") 'kill-buffer ) ; FN + "k" // Kill Buffer
(global-set-key (kbd "S-s-<return>")  'ansi-term) ; Shell
(global-set-key (kbd "H-n")  'split-window-below) ; Split Window Below (vertical)
(global-set-key (kbd "s-P")  'magit-status) ; magit git system
(global-set-key (kbd "s-O")  'org-agenda) ; org mode agenda
(global-set-key (kbd "s-g")  'goto-line) ; go to a specific line
(global-set-key (kbd "M-O")  'copy-file-path) ; copies file path to clipboard
(global-set-key (kbd "C-c a") 'org-agenda) ; org agenda
;;(global-set-key (kbd "C-c 0") 'ace-jump-mode) ; jump mode (:
(global-set-key (kbd "C-c c") 'org-capture) ; launch org capture
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files) ; helm find files
(global-set-key (kbd "C-x C-k k") 'helm-show-kill-ring) ; showing helm kill ring
;;(global-set-key (kbd "\t") 'company-complete) ; company mode autocomplete
;;(global-set-key (kbd "<backtab>") 'company--begin-inhibit-commands) ; company list commands
(global-set-key (kbd "C-x -") 'shrink-window) ; resize window reconfigure
(global-set-key (kbd "C-SPC") 'set-mark-command) ; set marker
(global-set-key (kbd "C-o") 'open-line) ; open line, duh
(global-set-key (kbd "s-t") 'other-window)
(global-set-key (kbd "s-H") 'golden-ratio) ; Meta + Shift + h - auto resize window (for magit bug?)

(provide 'setup-keybinds)
;;; setup-keybinds ends here
