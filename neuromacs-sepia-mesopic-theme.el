;; -*- lexical-binding: t; -*-
(require 'neuromacs-theme)

(defvar neuromacs-sepia-mesopic-palette
  '((cursor . "#d4c8b8")
    (bg-main . "#282421")
    (fg-main . "#d4c8b8")
    (border . "#3c3530")
    (bg-shadow-subtle . "#342e2a")
    (fg-shadow-subtle . "#8c8175")
    (bg-neutral . "#453d37")
    (fg-neutral . "#a89d91")
    (bg-shadow-intense . "#1f1b19")
    (fg-shadow-intense . "#61574f")
    (bg-accent . "#3a332e")
    (fg-accent . "#e0b07a")

    (fg-red . "#d2776d")
    (fg-green . "#9ab37c")
    (fg-yellow . "#e0b07a")
    (fg-blue . "#7698b3")
    (fg-magenta . "#b884a7")
    (fg-cyan . "#70a69f")

    (syn-keyword  . "#b884a7")
    (syn-builtin  . "#70a69f")
    (syn-string   . "#e0b07a")
    (syn-type     . "#d2776d")
    (syn-constant . "#e0b07a")
    (syn-variable . "#7698b3")
    (syn-function . "#7698b3")
    (syn-comment  . "#61574f")))

(neuromacs-define-theme neuro-sepia-mesopic
                        "Sepia Mesopic Theme."
                        neuromacs-sepia-mesopic-palette)
