;; -*- lexical-binding: t; -*-
(require 'neuromacs-theme)

(defvar neuro-sepia-photopic-palette
  '(;; Base estrutural (Simula papel pólen orgânico para máxima absorção de luz azul)
    (cursor . "#362c26")           ;; Marrom escuro para foco não agressivo
    (bg-main . "#e6d9c3")          ;; Fundo Papel Pólen (quente, corta radiação azul-violeta)
    (fg-main . "#362c26")          ;; Marrom Café (suaviza bordas das fontes em fundos quentes)
    (border . "#cbbca3")           ;; Areia escuro para divisões
    (bg-shadow-subtle . "#dcd0ba") ;; Fundo secundário em bege suave
    (fg-shadow-subtle . "#8b7d6b") ;; Texto de apoio em tom camurça
    (bg-neutral . "#d5c7af")       ;; Fundo neutro para modeline e destaques sutis
    (fg-neutral . "#6e6152")       ;; Texto neutro
    (bg-shadow-intense . "#c4b49a")
    (fg-shadow-intense . "#4d4237")
    (bg-accent . "#e3d2bc")        ;; Realce de linha levemente amarelado
    (fg-accent . "#4a6b8c")        ;; Azul Denim (suavizado para casar com fundo quente)

    ;; Cores semânticas (Tons terrosos e orgânicos para evitar aberração cromática)
    (fg-red . "#ac544f")           ;; Terracota
    (fg-green . "#637c4b")         ;; Verde Sálvia/Oliva
    (fg-yellow . "#9a7129")        ;; Amarelo-Ocre queimado
    (fg-blue . "#4a6b8c")          ;; Azul Denim (Baixa saturação)
    (fg-magenta . "#935c7f")       ;; Púrpura poeirenta
    (fg-cyan . "#4b837a")          ;; Turquesa escurecido

    ;; --- REALCE DE SINTAXE DO MODO NEURO SÉPIA ---
    (syn-keyword  . "#935c7f") ;; Púrpura poeirenta
    (syn-builtin  . "#4b837a") ;; Turquesa escurecido
    (syn-string   . "#637c4b") ;; Verde Sálvia (Cor mais repousante do espectro)
    (syn-type     . "#9a7129") ;; Ocre queimado
    (syn-constant . "#ac544f") ;; Terracota
    (syn-variable . "#4a6b8c") ;; Azul Denim
    (syn-function . "#4a6b8c") ;; Azul Denim
    (syn-comment  . "#8b7d6b"))) ;; Camurça (funde-se bem ao fundo papel pólen)

(neuromacs-define-theme neuro-sepia-photopic
                        "Modo Sépia Photopic."
                        neuro-sepia-photopic-palette)
