;; -*- lexical-binding: t; -*-
(require 'neuromacs)

(defvar neuro-sepia-mono-light-palette
  '(;; Base estrutural (Papel Pólen orgânico)
    (cursor . "#362c26")
    (bg-main . "#e6d9c3")          ;; Fundo Papel Pólen (Refletância otimizada)
    (fg-main . "#362c26")          ;; Marrom Café (Texto principal)
    (border . "#cbbca3")
    (bg-shadow-subtle . "#dcd0ba")
    (fg-shadow-subtle . "#8b7d6b")
    (bg-neutral . "#d5c7af")
    (fg-neutral . "#6e6152")
    (bg-shadow-intense . "#c4b49a")
    (fg-shadow-intense . "#4d4237")
    (bg-accent . "#e3d2bc")
    (fg-accent . "#4a392d")

    ;; Cores semânticas mapeadas em progressão de luminância (Via Magnocelular)
    (fg-red . "#5a4538")           ;; Sépia Escuro
    (fg-green . "#78604d")         ;; Sépia Médio 1
    (fg-yellow . "#967a61")        ;; Sépia Claro
    (fg-blue . "#4a392d")          ;; Sépia Denso (Maior peso visual)
    (fg-magenta . "#655040")       ;; Sépia Médio 2
    (fg-cyan . "#876c56")          ;; Sépia Dourado

    ;; --- REALCE DE SINTAXE (Variação de Contraste) ---
    (syn-keyword  . "#5a4538") ;; Sépia Escuro (Sólido, marca a estrutura do código)
    (syn-builtin  . "#655040") ;; Sépia Médio 2
    (syn-string   . "#876c56") ;; Sépia Dourado (Mais claro para não cansar em textos longos)
    (syn-type     . "#78604d") ;; Sépia Médio 1
    (syn-constant . "#967a61") ;; Sépia Claro
    (syn-variable . "#4a392d") ;; Sépia Denso (Atrai o foco focal rapidamente)
    (syn-function . "#4a392d") ;; Sépia Denso
    (syn-comment  . "#9b8d7d"))) ;; Marrom acinzentado esmaecido (Baixo peso visual)

(neuromacs-define-theme neuro-sepia-mono-light
                        "Modo Sépia Mono Light."
                        neuro-sepia-mono-light-palette)
