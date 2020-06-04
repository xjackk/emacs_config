;;; package ---  setup-snippets.el
;;; Commentary:
;;; setup-rust.el -*- lexical-binding: t; -*-

;;; Code:

(defun copy-file-path ()
  "Put the current file name on the clipboard."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      (file-name-directory default-directory)
                    (buffer-file-name))))
    (when filename
      (gui-select-text filename))))

(defun eshell/clear ()
  "Clear the eshell buffer."
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))


(defun sudo-edit (&optional arg)
  "Edit currently visited file as root.
With a prefix ARG prompt for a file to visit.
Will also prompt for a file to visit if current
buffer is not visiting a file."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:"
                         (ido-read-file-name "Find file(as root): ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(defun eshell/clear ()
  "Clear the eshell buffer babygirl."
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))

(provide 'setup-snippets)
;;; setup-snippets ends here
