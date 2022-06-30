;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; visual

(setq doom-font (font-spec :family "JetBrainsMono Nerd Font Mono" :size 14)
      doom-unicode-font (font-spec :family "JetBrainsMono Nerd Font Mono" :size 14)
      doom-theme 'doom-dracula)

(setq display-line-numbers-type t)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; fine tuning

(setq read-process-output-max (* 1024 1024)
      projectile-enable-caching nil)

;; projects

(after! projectile
  (add-to-list 'projectile-project-root-files-bottom-up "pubspec.yaml")
  (add-to-list 'projectile-project-root-files-bottom-up "project.clj"))

(setq projectile-project-search-path '("~/dev/side")) ;; side projects

;; lsp tweaks

(use-package! lsp-mode
  :commands lsp
  :config
  (setq lsp-semantic-tokens-enable t)
  (add-hook 'lsp-after-apply-edits-hook (lambda (&rest _) (save-buffer)))) ;; save buffers after renaming


(use-package! treemacs
  :config
  (setq treemacs-text-scale -1)
  (treemacs-follow-mode t))

;; which-key delay time

(setq which-key-idle-delay 0.3
      which-key-idle-secondary-delay 0.05)

(setq org-directory "~/org/")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys

(load! "+nubank" nil t)
(load! "+bindings")
