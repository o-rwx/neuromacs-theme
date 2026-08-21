;; -*- lexical-binding: t; -*-
(require 'neuromacs-theme)

(defvar neuromacs-sepia-photopic-palette
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
    (fg-accent . "#4a6b8c")

    (fg-red . "#ac544f")
    (fg-green . "#637c4b")
    (fg-yellow . "#9a7129")
    (fg-blue . "#4a6b8c")
    (fg-magenta . "#935c7f")
    (fg-cyan . "#4b837a")

    (syn-keyword  . "#935c7f")
    (syn-builtin  . "#4b837a")
    (syn-string   . "#637c4b")
    (syn-type     . "#9a7129")
    (syn-constant . "#ac544f")
    (syn-variable . "#4a6b8c")
    (syn-function . "#4a6b8c")
    (syn-comment  . "#8b7d6b")))

(neuromacs-define-theme neuromacs-sepia-photopic
                        "Sepia Photopic Theme."
                        neuromacs-sepia-photopic-palette)
