;;; +nubank.el -*- lexical-binding: t; -*-

(add-to-list 'projectile-project-search-path "~/dev/nu")

(let ((nudev-emacs-path "~/dev/nu/nudev/ides/emacs/"))
  (when (file-directory-p nudev-emacs-path)
    (add-to-list 'load-path nudev-emacs-path)
    (require 'nu nil t)))

(add-to-list 'projectile-project-search-path "~/dev/nu/mini-meta-repo/packages")
(add-to-list 'projectile-project-search-path "~/dev/nu/slides")
