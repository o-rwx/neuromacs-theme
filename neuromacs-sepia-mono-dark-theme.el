;; -*- lexical-binding: t; -*-
(require 'neuromacs-theme)

(defvar neuromacs-sepia-mono-dark-palette
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
    (fg-accent . "#ebcea8")

    (fg-red . "#e0c2a2")
    (fg-green . "#c7a683")
    (fg-yellow . "#b08e6b")
    (fg-blue . "#ebcea8")
    (fg-magenta . "#d6b595")
    (fg-cyan . "#bc9c7a")

    (syn-keyword  . "#e0c2a2")
    (syn-builtin  . "#d6b595")
    (syn-string   . "#b08e6b")
    (syn-type     . "#c7a683")
    (syn-constant . "#bc9c7a")
    (syn-variable . "#ebcea8")
    (syn-function . "#ebcea8")
    (syn-comment  . "#70645a")))

(neuromacs-define-theme neuromacs-sepia-mono-dark
                        "Sepia Mono Dark Theme."
                        neuromacs-sepia-mono-dark-palette)
