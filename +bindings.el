;;; +bindings.el -*- lexical-binding: t; -*-

(setq doom-localleader-key ",") ;; easier than <SPC m>

;; cide jack-in (alternative shortcut for mac)

(map! :after clojure-mode
      :map clojure-mode-map
      :localleader
      :desc "Cider jack in CLJ"
      "s" #'cider-jack-in-clj)
