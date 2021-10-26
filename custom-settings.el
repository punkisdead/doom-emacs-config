(setq user-full-name "Jeremy Anderson"
      user-mail-address "jeanderson@weedmaps.com")



(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 200))

(after! web-mode
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-markup-indent-offset 2))

(after! js2-mode
  (setq js-indent-level 2)
  (setq indent-tabs-mode nil))

(setq doom-font (font-spec :family "MesloLGS NF" :size 14)
      doom-variable-pitch-font (font-spec :family "Source Sans Pro" :size 15)
      doom-big-font (font-spec :family "MesloLGS NF" :size 24))

(setq doom-theme 'doom-tomorrow-night)
(setq doom-themes-treemacs-theme "doom-colors")

(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(defvar ruby-indent-to-hook 2)
(add-hook 'ruby-mode-hook
          (lambda ()
            (setq-local ruby-indent-level ruby-indent-to-hook)))

(after! lsp-mode
  (setq lsp-auto-guess-root t)
  (setq lsp-solargraph-formatting nil)
  (setq lsp-solargraph-symbols nil)
  (setq lsp-solargraph-folding nil))

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
