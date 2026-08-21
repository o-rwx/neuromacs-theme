;; -*- lexical-binding: t; -*-
(require 'neuromacs-theme)

(defconst neuro-photopic-palette
  '(;; Base estrutural herdada da paleta Neuro (Fundo Branco-Papiro e mitigação de fadiga)
    (cursor . "#383a42")           ;; Acompanha o fg-main para foco sem ofuscar
    (bg-main . "#f4f1ea")          ;; Branco-Papiro (corta picos de luz azul)[cite: 1]
    (fg-main . "#383a42")          ;; Chumbo Escuro (evita o contraste do preto puro)[cite: 1]
    (border . "#e8e5df")           ;; Cinza Quente[cite: 1]
    (bg-shadow-subtle . "#e8e5df") ;; Fundo Secundário (Cinza Quente)[cite: 1]
    (fg-shadow-subtle . "#9ca0aa") ;; Texto sutil de baixo contraste
    (bg-neutral . "#e0ddd5")       ;; Leve escurecimento para divisões e modeline
    (fg-neutral . "#7a7d87")       ;; Texto neutro
    (bg-shadow-intense . "#dcd9d1") ;; Sombras profundas
    (fg-shadow-intense . "#585a61")
    (bg-accent . "#e3e8f5")        ;; Fundo de destaque levemente azulado
    (fg-accent . "#4078f2")        ;; Azul Mudo[cite: 1]

    ;; Cores semânticas (Saturação ajustada para evitar o refoco constante da retina)
    (fg-red . "#e45649")           ;; Vermelho suave
    (fg-green . "#50a14f")         ;; Verde Musgo[cite: 1]
    (fg-yellow . "#986801")        ;; Amarelo-Ocre de baixa luminosidade
    (fg-blue . "#4078f2")          ;; Azul Mudo[cite: 1]
    (fg-magenta . "#a626a4")       ;; Magenta desaturado
    (fg-cyan . "#0184bc")          ;; Ciano suave

    ;; --- REALCE DE SINTAXE DO MODO NEURO ---
    (syn-keyword  . "#a626a4") ;; Magenta desaturado
    (syn-builtin  . "#0184bc") ;; Ciano suave
    (syn-string   . "#50a14f") ;; Verde Musgo (Zero esforço de foco)[cite: 1]
    (syn-type     . "#986801") ;; Amarelo-Ocre
    (syn-constant . "#e45649") ;; Vermelho suave
    (syn-variable . "#4078f2") ;; Azul Mudo[cite: 1]
    (syn-function . "#4078f2") ;; Azul Mudo
    (syn-comment  . "#9ca0aa"))) ;; Cinza claro para não atrair a atenção do córtex

(neuromacs-define-theme neuro-photopic
                        "Modo Photopic."
                        neuro-photopic-palette)
