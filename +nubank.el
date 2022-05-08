;;; +nubank.el -*- lexical-binding: t; -*-

(setq projectile-project-search-path '("~/dev/nu"))

(let ((nudev-emacs-path "~/dev/nu/nudev/ides/emacs/"))
  (when (file-directory-p nudev-emacs-path)
    (add-to-list 'load-path nudev-emacs-path)
    (require 'nu nil t)))
