;; -*- lexical-binding: t; -*-
(require 'neuromacs-theme)

(defvar neuromacs-sepia-mono-light-palette
  '((cursor . "#362c26")
    (bg-main . "#e6d9c3")
    (fg-main . "#362c26")
    (border . "#cbbca3")
    (bg-shadow-subtle . "#dcd0ba")
    (fg-shadow-subtle . "#8b7d6b")
    (bg-neutral . "#d5c7af")
    (fg-neutral . "#6e6152")
    (bg-shadow-intense . "#c4b49a")
    (fg-shadow-intense . "#4d4237")
    (bg-accent . "#e3d2bc")
    (fg-accent . "#4a392d")

    (fg-red . "#5a4538")
    (fg-green . "#78604d")
    (fg-yellow . "#967a61")
    (fg-blue . "#4a392d")
    (fg-magenta . "#655040")
    (fg-cyan . "#876c56")

    (syn-keyword  . "#5a4538")
    (syn-builtin  . "#655040")
    (syn-string   . "#876c56")
    (syn-type     . "#78604d")
    (syn-constant . "#967a61")
    (syn-variable . "#4a392d")
    (syn-function . "#4a392d")
    (syn-comment  . "#9b8d7d")))

(neuromacs-define-theme neuromacs-sepia-mono-light
                        "Sepia Mono Light Theme."
                        neuromacs-sepia-mono-light-palette)
