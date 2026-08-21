;; -*- lexical-binding: t; -*-
(require 'neuromacs-theme)

(defvar neuromacs-mesopic-palette
  '((cursor . "#d4d4d4")
    (bg-main . "#1e1f22")
    (fg-main . "#d4d4d4")
    (border . "#2b2d31")
    (bg-shadow-subtle . "#2b2d31")
    (fg-shadow-subtle . "#7f848e")
    (bg-neutral . "#32363b")
    (fg-neutral . "#abb2bf")
    (bg-shadow-intense . "#151619")
    (fg-shadow-intense . "#5c6370")
    (bg-accent . "#2c313a")
    (fg-accent . "#e5c07b")

    (fg-red . "#e06c75")
    (fg-green . "#98c379")
    (fg-yellow . "#e5c07b")
    (fg-blue . "#5a8baf")
    (fg-magenta . "#c678dd")
    (fg-cyan . "#56b6c2")

    (syn-keyword  . "#c678dd")
    (syn-builtin  . "#56b6c2")
    (syn-string   . "#e5c07b")
    (syn-type     . "#d19a66")
    (syn-constant . "#e06c75")
    (syn-variable . "#56b6c2")
    (syn-function . "#5a8baf")
    (syn-comment  . "#5c6370")))

(neuromacs-define-theme neuromacs-mesopic
                        "Modo mesopic Theme."
                        neuromacs-mesopic-palette)
