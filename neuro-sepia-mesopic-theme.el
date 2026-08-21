;; -*- lexical-binding: t; -*-
(require 'neuromacs)

(defvar neuro-sepia-mesopic-palette
  '(;; Base estrutural (Fundo Café Torrado escuro, elimina halo e preserva melatonina)
    (cursor . "#d4c8b8")           ;; Acompanha o texto areia
    (bg-main . "#282421")          ;; Café Torrado (escuro, quente, zero emissão azul)
    (fg-main . "#d4c8b8")          ;; Areia/Bege claro (ótima leitura sobre fundo marrom)
    (border . "#3c3530")           ;; Nogueira escuro para contornos
    (bg-shadow-subtle . "#342e2a") ;; Fundo secundário terroso
    (fg-shadow-subtle . "#8c8175") ;; Cinza-pardo para textos secundários
    (bg-neutral . "#453d37")       ;; Fundo neutro (modeline)
    (fg-neutral . "#a89d91")       ;; Texto neutro quente
    (bg-shadow-intense . "#1f1b19") ;; Sombras profundas (quase preto, mas quente)
    (fg-shadow-intense . "#61574f")
    (bg-accent . "#3a332e")        ;; Destaque sutil (hl-line)
    (fg-accent . "#e0b07a")        ;; Âmbar dourado para interfaces

    ;; Cores semânticas (Mantêm a distinção de sintaxe sem gerar ofuscamento)
    (fg-red . "#d2776d")           ;; Tijolo suave
    (fg-green . "#9ab37c")         ;; Sálvia claro
    (fg-yellow . "#e0b07a")        ;; Âmbar dourado (excelente visibilidade noturna)
    (fg-blue . "#7698b3")          ;; Azul acinzentado poeirento
    (fg-magenta . "#b884a7")       ;; Malva claro
    (fg-cyan . "#70a69f")          ;; Verde-mar opaco

    ;; --- REALCE DE SINTAXE DO MODO NEURO SÉPIA ---
    (syn-keyword  . "#b884a7") ;; Malva claro
    (syn-builtin  . "#70a69f") ;; Verde-mar opaco
    (syn-string   . "#e0b07a") ;; Âmbar dourado (Evita esforço do cristalino à noite)
    (syn-type     . "#d2776d") ;; Tijolo suave
    (syn-constant . "#e0b07a") ;; Âmbar dourado
    (syn-variable . "#7698b3") ;; Azul acinzentado
    (syn-function . "#7698b3") ;; Azul acinzentado
    (syn-comment  . "#61574f"))) ;; Marrom acinzentado (invisível à visão periférica, legível no foco)

(neuromacs-define-theme neuro-sepia-mesopic
                        "Modo Sépia Mesopic."
                        neuro-sepia-mesopic-palette)
