;;; package ---  setup-gradle.el
;;; Commentary:
;;; setup-gradle.el -*- lexical-binding: t; -*-

;;; Code:

;; for Java Gradle
(require 'gradle-mode)
(add-hook 'java-mode-hook '(lambda() (gradle-mode 1)))

(provide 'setup-gradle)
;;; setup-grade ends here

