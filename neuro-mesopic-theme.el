;; -*- lexical-binding: t; -*-
(require 'neuromacs)

(defvar neuro-mesopic-palette
  '(;; Base estrutural (Fundo Carvão Fosco, previne Efeito de Halo e preserva melatonina)[cite: 1]
    (cursor . "#d4d4d4")           ;; Acompanha o fg-main para manter a uniformidade
    (bg-main . "#1e1f22")          ;; Carvão Fosco (escuro, mas não preto absoluto)[cite: 1]
    (fg-main . "#d4d4d4")          ;; Cinza Claro (mantém legibilidade sem ofuscar)[cite: 1]
    (border . "#2b2d31")           ;; Cinza Ardósia[cite: 1]
    (bg-shadow-subtle . "#2b2d31") ;; Fundo Secundário (Cinza Ardósia)[cite: 1]
    (fg-shadow-subtle . "#7f848e") ;; Texto de apoio com contraste reduzido
    (bg-neutral . "#32363b")       ;; Leve clareamento para divisões de janelas e modeline
    (fg-neutral . "#abb2bf")       ;; Texto neutro de transição
    (bg-shadow-intense . "#151619") ;; Sombras mais profundas que o fundo (simula profundidade)
    (fg-shadow-intense . "#5c6370")
    (bg-accent . "#2c313a")        ;; Realce sutil da linha atual (hl-line)
    (fg-accent . "#e5c07b")        ;; Âmbar Quente para destaque de interface[cite: 1]

    ;; Cores semânticas (Filtro de luz azul aplicado: tons quentes e dessaturados priorizados)
    (fg-red . "#e06c75")           ;; Vermelho suave
    (fg-green . "#98c379")         ;; Verde opaco
    (fg-yellow . "#e5c07b")        ;; Âmbar Quente (preserva resposta circadiana)[cite: 1]
    (fg-blue . "#5a8baf")          ;; Azul acinzentado (reduzida a energia luminosa típica do azul)
    (fg-magenta . "#c678dd")       ;; Magenta fosco
    (fg-cyan . "#56b6c2")          ;; Ciano Desaturado[cite: 1]

    ;; --- REALCE DE SINTAXE DO MODO NEURO ---
    (syn-keyword  . "#c678dd") ;; Magenta fosco
    (syn-builtin  . "#56b6c2") ;; Ciano Desaturado[cite: 1]
    (syn-string   . "#e5c07b") ;; Âmbar Quente (ideal para longos blocos sem fadiga)[cite: 1]
    (syn-type     . "#d19a66") ;; Laranja/Terra (excelente para visão escotópica/noturna)
    (syn-constant . "#e06c75") ;; Vermelho suave
    (syn-variable . "#56b6c2") ;; Ciano Desaturado[cite: 1]
    (syn-function . "#5a8baf") ;; Azul acinzentado mitigado
    (syn-comment  . "#5c6370"))) ;; Cinza escuro (fácil de ignorar perifericamente, fácil de focar ativamente)

(neuromacs-define-theme neuro-mesopic
                        "Modo mesopic."
                        neuro-mesopic-palette)
