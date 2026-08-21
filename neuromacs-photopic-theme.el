;; -*- lexical-binding: t; -*-
(require 'neuromacs-theme)

(defconst neuromacs-photopic-palette
  '((cursor . "#383a42")
    (bg-main . "#f4f1ea")
    (fg-main . "#383a42")
    (border . "#e8e5df")
    (bg-shadow-subtle . "#e8e5df")
    (fg-shadow-subtle . "#9ca0aa")
    (bg-neutral . "#e0ddd5")
    (fg-neutral . "#7a7d87")
    (bg-shadow-intense . "#dcd9d1")
    (fg-shadow-intense . "#585a61")
    (bg-accent . "#e3e8f5")
    (fg-accent . "#4078f2")

    (fg-red . "#e45649")
    (fg-green . "#50a14f")
    (fg-yellow . "#986801")
    (fg-blue . "#4078f2")
    (fg-magenta . "#a626a4")
    (fg-cyan . "#0184bc")

    (syn-keyword  . "#a626a4")
    (syn-builtin  . "#0184bc")
    (syn-string   . "#50a14f")
    (syn-type     . "#986801")
    (syn-constant . "#e45649")
    (syn-variable . "#4078f2")
    (syn-function . "#4078f2")
    (syn-comment  . "#9ca0aa")))

(neuromacs-define-theme neuromacs-photopic
                        "Modo Photopic Theme."
                        neuromacs-photopic-palette)
