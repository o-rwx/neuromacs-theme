;; -*- lexical-binding: t; -*-
(require 'neuromacs)

(defvar neuro-sepia-mono-dark-palette
  '(;; Base estrutural (Fundo Café Torrado)
    (cursor . "#d4c8b8")
    (bg-main . "#282421")          ;; Fundo escuro quente (Zero inibição de melatonina)
    (fg-main . "#d4c8b8")          ;; Areia base
    (border . "#3c3530")
    (bg-shadow-subtle . "#342e2a")
    (fg-shadow-subtle . "#8c8175")
    (bg-neutral . "#453d37")
    (fg-neutral . "#a89d91")
    (bg-shadow-intense . "#1f1b19")
    (fg-shadow-intense . "#61574f")
    (bg-accent . "#3a332e")
    (fg-accent . "#ebcea8")

    ;; Cores semânticas mapeadas em emissão de luz gradual
    (fg-red . "#e0c2a2")           ;; Areia Luminoso
    (fg-green . "#c7a683")         ;; Areia Médio 1
    (fg-yellow . "#b08e6b")        ;; Areia Escuro
    (fg-blue . "#ebcea8")          ;; Areia Brilhante (Foco máximo)
    (fg-magenta . "#d6b595")       ;; Areia Quente
    (fg-cyan . "#bc9c7a")          ;; Areia Opaco

    ;; --- REALCE DE SINTAXE (Variação de Luminosidade) ---
    (syn-keyword  . "#e0c2a2") ;; Areia Luminoso (Destaca a arquitetura lógica)
    (syn-builtin  . "#d6b595") ;; Areia Quente
    (syn-string   . "#b08e6b") ;; Areia Escuro (Recua visualmente para leitura relaxada)
    (syn-type     . "#c7a683") ;; Areia Médio 1
    (syn-constant . "#bc9c7a") ;; Areia Opaco
    (syn-variable . "#ebcea8") ;; Areia Brilhante (Pula para o primeiro plano)
    (syn-function . "#ebcea8") ;; Areia Brilhante
    (syn-comment  . "#70645a"))) ;; Sépia fantasma (Fundido às sombras periféricas)

(neuromacs-define-theme neuro-sepia-mono-dark
                        "Modo Sépia Mono Dark."
                        neuro-sepia-mono-dark-palette)
