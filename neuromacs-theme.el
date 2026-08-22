;;; neuromacs-theme.el --- Motor central do tema Neuromacs -*- lexical-binding: t; -*-

;; Author: o-rwx
;; URL: https://github.com/o-rwx/neuromacs-theme
;; Version: 0.1.0
;; Package-Requires: ((emacs "24.1"))

;;; Commentary:
;;
;; A scientifically designed Emacs color theme built to mitigate visual fatigue.
;;
;;; Code:

(defgroup neuromacs-theme nil
  "Neuromacs theme custom group."
  :group 'faces)

(defcustom neuromacs-palette-overrides nil
  "List to change specific colors."
  :type '(alist :key-type symbol :value-type string)
  :group 'neuromacs-theme)

(defun neuromacs--apply-theme (theme palette)
  "Function to merge customized colors to the main THEME if ha one and apply the whole thing."
  (let* (;; 1. Merge da paleta base com as customizações do usuário
         (colors (append neuromacs-palette-overrides palette))

         ;; 2. Cores Estruturais Base (Obrigatórias)
         (cursor             (alist-get 'cursor colors))
         (bg-main            (alist-get 'bg-main colors))
         (fg-main            (alist-get 'fg-main colors))
         (border             (alist-get 'border colors))
         (bg-shadow-subtle   (alist-get 'bg-shadow-subtle colors))
         (fg-shadow-subtle   (alist-get 'fg-shadow-subtle colors))
         (bg-neutral         (alist-get 'bg-neutral colors))
         (fg-neutral         (alist-get 'fg-neutral colors))
         (bg-shadow-intense  (alist-get 'bg-shadow-intense colors))
         (fg-shadow-intense  (alist-get 'fg-shadow-intense colors))

         ;; 3. Cores de Interface/Semânticas (Fallbacks com 'or')
         (fg-red     (or (alist-get 'fg-red colors) fg-main))
         (bg-red     (or (alist-get 'bg-red colors) 'unspecified))
         (fg-green   (or (alist-get 'fg-green colors) fg-main))
         (bg-green   (or (alist-get 'bg-green colors) 'unspecified))
         (fg-yellow  (or (alist-get 'fg-yellow colors) fg-shadow-intense))
         (bg-yellow  (or (alist-get 'bg-yellow colors) 'unspecified))
         (fg-blue    (or (alist-get 'fg-blue colors) fg-main))
         (bg-blue    (or (alist-get 'bg-blue colors) 'unspecified))
         (fg-magenta (or (alist-get 'fg-magenta colors) fg-main))
         (bg-magenta (or (alist-get 'bg-magenta colors) 'unspecified))
         (fg-cyan    (or (alist-get 'fg-cyan colors) fg-shadow-intense))
         (bg-cyan    (or (alist-get 'bg-cyan colors) 'unspecified))

         ;; 4. Mapeamento de Sintaxe
         (syn-keyword  (or (alist-get 'syn-keyword colors) fg-main))
         (syn-builtin  (or (alist-get 'syn-builtin colors) fg-shadow-subtle))
         (syn-string   (or (alist-get 'syn-string colors) fg-shadow-subtle))
         (syn-type     (or (alist-get 'syn-type colors) fg-shadow-intense))
         (syn-constant (or (alist-get 'syn-constant colors) fg-shadow-intense))
         (syn-variable (or (alist-get 'syn-variable colors) fg-shadow-subtle))
         (syn-function (or (alist-get 'syn-function colors) fg-main))
         (syn-comment  (or (alist-get 'syn-comment colors) fg-neutral)))

    (custom-theme-set-faces
     theme

     ;; ==========================================
     ;; 1. ESSENCIAIS E BUILT-INS DO EMACS
     ;; ==========================================
     `(default ((t (:background ,bg-main :foreground ,fg-main))))
     `(cursor ((t (:background ,cursor :foreground ,bg-main))))
     `(region ((t (:background ,bg-shadow-intense :foreground ,fg-main :extend t))))
     `(fringe ((t (:background ,bg-main :foreground ,border))))
     `(vertical-border ((t (:foreground ,border))))
     `(shadow ((t (:foreground ,fg-shadow-subtle))))
     `(error ((t (:foreground ,fg-red :weight bold))))
     `(warning ((t (:foreground ,fg-yellow :weight bold))))
     `(success ((t (:foreground ,fg-green :weight bold))))
     `(highlight ((t (:background ,bg-shadow-intense :foreground ,fg-main :extend t))))
     `(secondary-selection ((t (:background ,bg-shadow-subtle :foreground ,fg-main :extend t))))
     `(trailing-whitespace ((t (:background ,bg-red))))
     `(escape-glyph ((t (:foreground ,fg-shadow-intense :weight bold))))
     `(homoglyph ((t (:foreground ,fg-yellow))))
     `(button ((t (:foreground ,fg-blue :underline t))))
     `(link ((t (:foreground ,fg-blue :underline t))))
     `(link-visited ((t (:foreground ,fg-magenta :underline t))))
     `(tooltip ((t (:background ,bg-shadow-intense :foreground ,fg-main))))

     ;; ==========================================
     ;; 2. FONT-LOCK UNIVERSAL (Código)
     ;; ==========================================
     `(font-lock-builtin-face ((t (:foreground ,syn-builtin :weight bold))))
     `(font-lock-comment-face ((t (:foreground ,syn-comment :slant italic))))
     `(font-lock-comment-delimiter-face ((t (:foreground ,syn-comment :slant italic))))
     `(font-lock-constant-face ((t (:foreground ,syn-constant))))
     `(font-lock-function-name-face ((t (:foreground ,syn-function))))
     `(font-lock-keyword-face ((t (:foreground ,syn-keyword :weight bold))))
     `(font-lock-string-face ((t (:foreground ,syn-string))))
     `(font-lock-type-face ((t (:foreground ,syn-type :weight bold))))
     `(font-lock-variable-name-face ((t (:foreground ,syn-variable))))
     `(font-lock-doc-face ((t (:foreground ,syn-comment :slant italic))))

     ;; ==========================================
     ;; 3. MODELINE & INTERFACE TABULAR
     ;; ==========================================
     `(mode-line ((t (:background ,bg-neutral :foreground ,fg-main :box (:line-width 1 :color ,border)))))
     `(mode-line-inactive ((t (:background ,bg-shadow-subtle :foreground ,fg-shadow-subtle :box (:line-width 1 :color ,bg-shadow-subtle)))))
     `(mode-line-buffer-id ((t (:foreground ,fg-main :weight bold))))
     `(mode-line-emphasis ((t (:foreground ,fg-shadow-intense :weight bold))))
     `(mode-line-highlight ((t (:background ,bg-shadow-intense :foreground ,fg-main))))

     ;; Cabeçalhos (Listas, Ibuffer, Pacotes, Bookmarks)
     `(header-line ((t (:background ,bg-main :foreground ,fg-shadow-intense :box nil :underline ,border))))
     `(header-line-inactive ((t (:background ,bg-main :foreground ,fg-shadow-subtle :box nil :underline ,border))))
     `(tabulated-list-col-header ((t (:background ,bg-main :foreground ,fg-main :weight bold))))
     `(help-key-binding ((t (:background ,bg-shadow-subtle :foreground ,fg-main :box (:line-width -1 :color ,border) :weight bold))))

     ;; ==========================================
     ;; 4. MINIBUFFER, BUSCA E COMPLETION
     ;; ==========================================
     `(minibuffer-prompt ((t (:foreground ,syn-keyword :weight bold))))
     `(comint-highlight-prompt ((t (:foreground ,syn-keyword :weight bold))))

     ;; Isearch & Occur
     `(isearch ((t (:background ,bg-shadow-intense :foreground ,fg-main :weight bold :extend t))))
     `(isearch-fail ((t (:background ,bg-red :foreground ,fg-main))))
     `(lazy-highlight ((t (:background ,bg-shadow-subtle :foreground ,fg-main))))
     `(match ((t (:background ,bg-shadow-subtle :foreground ,fg-main :weight bold))))

     ;; Vertico
     `(vertico-current ((t (:background ,bg-shadow-intense :foreground ,fg-main :weight bold :extend t))))
     `(vertico-group-title ((t (:foreground ,fg-main :weight bold))))
     `(vertico-group-separator ((t (:foreground ,border :strike-through t))))

     ;; Consult
     `(consult-async-split ((t (:foreground ,fg-red))))
     `(consult-file ((t (:foreground ,fg-blue :weight bold))))
     `(consult-highlight-mark ((t (:background ,bg-shadow-subtle))))
     `(consult-highlight-match ((t (:background ,bg-shadow-intense))))

     ;; Embark
     `(embark-target ((t (:background ,bg-shadow-subtle :foreground ,fg-main :weight bold))))

     ;; Helm
     `(helm-selection ((t (:background ,bg-shadow-intense :foreground ,fg-main :weight bold :extend t))))
     `(helm-source-header ((t (:background ,bg-main :foreground ,fg-shadow-intense :weight bold :underline ,border :extend t))))
     `(helm-match ((t (:foreground ,fg-magenta :weight bold))))

     ;; Marginalia
     `(marginalia-documentation ((t (:foreground ,syn-comment :slant italic))))
     `(marginalia-file-name ((t (:foreground ,fg-shadow-subtle))))
     `(marginalia-file-owner ((t (:foreground ,fg-shadow-subtle))))
     `(marginalia-file-priv-dir ((t (:foreground ,fg-blue))))
     `(marginalia-file-priv-exec ((t (:foreground ,fg-magenta))))
     `(marginalia-file-priv-link ((t (:foreground ,fg-cyan))))
     `(marginalia-file-priv-read ((t (:foreground ,fg-main))))
     `(marginalia-file-priv-write ((t (:foreground ,fg-blue))))

     ;; ==========================================
     ;; 5. GERENCIAMENTO DE ARQUIVOS E PROCESSOS
     ;; ==========================================
     ;; Dired
     `(dired-directory ((t (:foreground ,fg-blue :weight bold))))
     `(dired-symlink ((t (:foreground ,fg-cyan :underline t))))
     `(dired-ignored ((t (:foreground ,fg-shadow-subtle))))
     `(dired-mark ((t (:foreground ,fg-yellow :weight bold))))
     `(dired-marked ((t (:background ,bg-shadow-subtle :foreground ,fg-main :weight bold :extend t))))
     `(dired-header ((t (:foreground ,fg-main :weight bold))))

     ;; Ibuffer
     `(ibuffer-deletion ((t (:foreground ,fg-red :weight bold))))
     `(ibuffer-marked ((t (:background ,bg-shadow-subtle :foreground ,fg-main :weight bold :extend t))))
     `(ibuffer-filter-group-name ((t (:foreground ,fg-blue :weight bold))))
     `(ibuffer-title ((t (:foreground ,fg-main :weight bold))))

     ;; Proced
     `(proced-executable ((t (:foreground ,fg-blue :weight bold))))
     `(proced-pid ((t (:foreground ,fg-shadow-intense))))
     `(proced-run-status-code ((t (:foreground ,fg-green))))
     `(proced-memory-high-usage ((t (:foreground ,fg-red))))

     ;; ==========================================
     ;; 6. CONTROLE DE VERSÃO (VC, Magit, Ediff)
     ;; ==========================================
     `(vc-edited-state ((t (:foreground ,fg-main :weight bold))))
     `(vc-conflict-state ((t (:foreground ,fg-red :background ,bg-red :weight bold :slant italic))))
     `(vc-missing-state ((t (:foreground ,fg-red :underline (:style wave :color ,fg-red)))))
     `(vc-needs-update-state ((t (:foreground ,fg-yellow))))
     `(vc-removed-state ((t (:foreground ,fg-red :underline (:style wave :color ,fg-red)))))
     `(vc-up-to-date-state ((t (:foreground ,fg-shadow-intense))))

     ;; Ediff
     `(ediff-current-diff-A ((t (:background ,bg-red :foreground ,fg-main :extend t))))
     `(ediff-current-diff-B ((t (:background ,bg-green :foreground ,fg-main :extend t))))
     `(ediff-current-diff-C ((t (:background ,bg-yellow :foreground ,fg-main :extend t))))
     `(ediff-even-diff-A ((t (:background ,bg-shadow-subtle :extend t))))
     `(ediff-odd-diff-A ((t (:background ,bg-shadow-intense :extend t))))
     `(ediff-even-diff-B ((t (:background ,bg-shadow-subtle :extend t))))
     `(ediff-odd-diff-B ((t (:background ,bg-shadow-intense :extend t))))

     ;; ==========================================
     ;; 7. ORGANIZAÇÃO E ESCRITA (Org, Typst, LaTeX, Outline)
     ;; ==========================================
     ;; Org Mode
     `(org-level-1 ((t (:foreground ,fg-main :weight bold :height 1.2))))
     `(org-level-2 ((t (:foreground ,fg-shadow-intense :weight bold :height 1.1))))
     `(org-level-3 ((t (:foreground ,fg-neutral :weight bold))))
     `(org-document-title ((t (:foreground ,fg-main :weight bold :height 1.4))))
     `(org-block ((t (:background ,bg-shadow-subtle :extend t))))
     `(org-block-begin-line ((t (:background ,bg-shadow-subtle :foreground ,fg-shadow-intense :extend t))))
     `(org-block-end-line ((t (:background ,bg-shadow-subtle :foreground ,fg-shadow-intense :extend t))))
     `(org-code ((t (:background ,bg-shadow-subtle :foreground ,fg-main))))
     `(org-done ((t (:foreground ,fg-green))))
     `(org-todo ((t (:foreground ,fg-red))))

     ;; Outline
     `(outline-1 ((t (:foreground ,fg-main :weight bold :height 1.2))))
     `(outline-2 ((t (:foreground ,fg-shadow-intense :weight bold :height 1.1))))
     `(outline-3 ((t (:foreground ,fg-neutral :weight bold))))
     `(outline-4 ((t (:foreground ,fg-shadow-subtle :weight bold))))

     ;; Typst (typst-ts-mode)
     `(typst-ts-markup-header-face ((t (:foreground ,fg-main :weight bold))))
     `(typst-ts-markup-raw-block-face ((t (:background ,bg-shadow-subtle :extend t))))
     `(typst-ts-markup-raw-inline-face ((t (:background ,bg-shadow-subtle))))
     `(typst-ts-math-face ((t (:foreground ,syn-constant))))

     ;; LaTeX / AUCTeX
     `(font-latex-bold-face ((t (:weight bold))))
     `(font-latex-italic-face ((t (:slant italic))))
     `(font-latex-math-face ((t (:foreground ,syn-constant))))
     `(font-latex-sectioning-5-face ((t (:foreground ,fg-shadow-intense :weight bold))))
     `(font-latex-sedate-face ((t (:foreground ,syn-keyword :weight bold))))

     ;; ==========================================
     ;; 8. DOCUMENTAÇÃO (Info, Helpful)
     ;; ==========================================
     ;; Info
     `(info-title-1 ((t (:foreground ,fg-main :weight bold :height 1.2))))
     `(info-title-2 ((t (:foreground ,fg-shadow-intense :weight bold :height 1.1))))
     `(info-node ((t (:foreground ,fg-blue :weight bold))))
     `(info-menu-header ((t (:foreground ,fg-main :weight bold))))
     `(Info-quoted ((t (:background ,bg-shadow-subtle :foreground ,fg-main))))

     ;; Helpful
     `(helpful-heading ((t (:foreground ,fg-main :weight bold :height 1.2))))

     ;; ==========================================
     ;; 9. TERMINAL E SHELL (ANSI, Eshell)
     ;; ==========================================
     ;; Eshell
     `(eshell-ls-directory ((t (:foreground ,fg-blue :weight bold))))
     `(eshell-ls-executable ((t (:foreground ,fg-magenta))))
     `(eshell-ls-symlink ((t (:foreground ,fg-cyan :underline t))))
     `(eshell-prompt ((t (:foreground ,syn-keyword :weight bold))))

     ;; ANSI Term
     `(ansi-color-black ((t (:background ,bg-main :foreground ,fg-main))))
     `(ansi-color-blue ((t (:background ,bg-blue :foreground ,fg-blue))))
     `(ansi-color-bright-black ((t (:background ,bg-shadow-intense :foreground ,fg-shadow-intense))))
     `(ansi-color-bright-blue ((t (:background ,bg-blue :foreground ,fg-blue))))
     `(ansi-color-bright-cyan ((t (:background ,bg-cyan :foreground ,fg-cyan))))
     `(ansi-color-bright-green ((t (:background ,bg-green :foreground ,fg-green))))
     `(ansi-color-bright-magenta ((t (:background ,bg-magenta :foreground ,fg-magenta))))
     `(ansi-color-bright-red ((t (:background ,bg-red :foreground ,fg-red))))
     `(ansi-color-bright-white ((t (:background ,bg-main :foreground ,fg-main))))
     `(ansi-color-bright-yellow ((t (:background ,bg-yellow :foreground ,fg-yellow))))
     `(ansi-color-cyan ((t (:background ,bg-cyan :foreground ,fg-cyan))))
     `(ansi-color-green ((t (:background ,bg-green :foreground ,fg-green))))
     `(ansi-color-magenta ((t (:background ,bg-magenta :foreground ,fg-magenta))))
     `(ansi-color-red ((t (:background ,bg-red :foreground ,fg-red))))
     `(ansi-color-white ((t (:background ,bg-main :foreground ,fg-main))))
     `(ansi-color-yellow ((t (:background ,bg-yellow :foreground ,fg-yellow))))

     ;; ==========================================
     ;; 10. ÍCONES (Nerd Icons)
     ;; ==========================================
     `(nerd-icons-blue ((t (:foreground ,fg-blue))))
     `(nerd-icons-blue-alt ((t (:foreground ,fg-blue))))
     `(nerd-icons-cyan ((t (:foreground ,fg-cyan))))
     `(nerd-icons-cyan-alt ((t (:foreground ,fg-cyan))))
     `(nerd-icons-dblue ((t (:foreground ,fg-blue))))
     `(nerd-icons-dcyan ((t (:foreground ,fg-cyan))))
     `(nerd-icons-dgreen ((t (:foreground ,fg-green))))
     `(nerd-icons-dmaroon ((t (:foreground ,fg-magenta))))
     `(nerd-icons-dorange ((t (:foreground ,fg-red))))
     `(nerd-icons-dpink ((t (:foreground ,fg-magenta))))
     `(nerd-icons-dpurple ((t (:foreground ,fg-magenta))))
     `(nerd-icons-dred ((t (:foreground ,fg-red))))
     `(nerd-icons-dsilver ((t (:foreground ,fg-shadow-subtle))))
     `(nerd-icons-dyellow ((t (:foreground ,fg-yellow))))
     `(nerd-icons-green ((t (:foreground ,fg-green))))
     `(nerd-icons-lblue ((t (:foreground ,fg-blue))))
     `(nerd-icons-lcyan ((t (:foreground ,fg-cyan))))
     `(nerd-icons-lgreen ((t (:foreground ,fg-green))))
     `(nerd-icons-lmaroon ((t (:foreground ,fg-magenta))))
     `(nerd-icons-lorange ((t (:foreground ,fg-yellow))))
     `(nerd-icons-lpink ((t (:foreground ,fg-magenta))))
     `(nerd-icons-lpurple ((t (:foreground ,fg-magenta))))
     `(nerd-icons-lred ((t (:foreground ,fg-red))))
     `(nerd-icons-lsilver ((t (:foreground ,fg-shadow-subtle))))
     `(nerd-icons-lyellow ((t (:foreground ,fg-yellow))))
     `(nerd-icons-maroon ((t (:foreground ,fg-magenta))))
     `(nerd-icons-orange ((t (:foreground ,fg-yellow))))
     `(nerd-icons-pink ((t (:foreground ,fg-magenta))))
     `(nerd-icons-purple ((t (:foreground ,fg-magenta))))
     `(nerd-icons-purple-alt ((t (:foreground ,fg-blue))))
     `(nerd-icons-red ((t (:foreground ,fg-red))))
     `(nerd-icons-red-alt ((t (:foreground ,fg-red))))
     `(nerd-icons-silver ((t (:foreground ,fg-shadow-subtle))))
     `(nerd-icons-yellow ((t (:foreground ,fg-yellow))))

     ;; Extra: PDF-Tools e Leitura EPUB (nov.el)
     `(pdf-view-region ((t (:background ,bg-shadow-intense :extend t))))
     `(nov-title-face ((t (:foreground ,fg-main :weight bold :height 1.4))))
     `(nov-subtitle-face ((t (:foreground ,fg-shadow-intense :weight bold :height 1.2))))
     `(nov-author-face ((t (:foreground ,fg-neutral :slant italic)))))

    (custom-theme-set-variables
     theme
     `(pdf-view-midnight-colors (cons ,fg-main ,bg-main)))))

;;; MACRO DE ENTRYPOINT
(defmacro neuromacs-define-theme (theme docstring palette)
  "Apply strucutral rules to THEME using the PALETTE."
  `(progn
     (deftheme ,theme ,docstring)
     ;; Devolvemos a carga pesada para a função em tempo de execução
     (neuromacs--apply-theme ',theme ,palette)
     (provide-theme ',theme)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-directory load-file-name)))

(provide 'neuromacs-theme)
