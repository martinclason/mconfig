(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#3c3836" "#fb4934" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(custom-enabled-themes '(gruvbox))
 '(custom-safe-themes
   '("a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "8e797edd9fa9afec181efbfeeebf96aeafbd11b69c4c85fa229bb5b9f7f7e66c" "b583823b9ee1573074e7cbfd63623fe844030d911e9279a7c8a5d16de7df0ed0" "2b9dc43b786e36f68a9fd4b36dd050509a0e32fe3b0a803310661edb7402b8b6" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" "3da031b25828b115c6b50bb92a117f5c0bbd3d9d0e9ba5af3cd2cb9db80db1c2" "4639288d273cbd3dc880992e6032f9c817f17c4a91f00f3872009a099f5b3f84" "7f89ec3c988c398b88f7304a75ed225eaac64efa8df3638c815acc563dfd3b55" default))
 '(inhibit-startup-screen t)
 '(irony-additional-clang-options
   '("-I/Library/Developer/CommandLineTools/usr/include/c++/v1"))
 '(markdown-header-scaling t)
 '(org-agenda-custom-commands
   '(("F" "Frågor som ska in i anki." todo-tree "DONE"
      ((org-agenda-overriding-header "")))
     ("f" "Frågor som behöver besvaras." todo-tree "TODO"
      ((nil nil)))
     ("n" "Agenda and all TODOs"
      ((agenda "" nil)
       (alltodo "" nil))
      nil)))
 '(org-babel-load-languages '((C . t) (emacs-lisp . t)))
 '(org-bullets-bullet-list '("◉" "○"))
 '(org-hide-emphasis-markers t)
 '(org-hierarchical-todo-statistics nil)
 '(org-todo-keyword-faces
   '(("OKLAR" . "orange")
     ("CANCELED" . "red")
     ("SKISS" . org-warning)
     ("TODO" . "yellow")))
 '(package-selected-packages
   '(org-download company-irony irony htmlize highlight-symbol jedi elpy haskell-mode elm-mode evil mixed-pitch org-bullets multiple-cursors helm swift-mode neotree markdown-mode gruvbox-theme flymd dash-at-point clojure-mode-extra-font-locking cider auto-complete all-the-icons))
 '(pdf-view-midnight-colors '("#282828" . "#f9f5d7"))
 '(scroll-margin 8)
 '(send-mail-function 'mailclient-send-it)
 '(whitespace-global-modes '(not markdown-mode dired-mode wdired-mode org-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fixed-pitch ((t (:family "Inconsolata" :slant normal :weight normal :height 1.0 :width normal))))
 '(markdown-header-face-7 ((t (:inherit default :weight bold :foreground "#fdf4c1" :font "Helvetica Neue"))))
 '(markdown-header-face-8 ((t (:inherit default :weight bold :foreground "#fdf4c1" :font "Helvetica Neue"))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-document-info ((t (:foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-title ((t (:inherit default :weight bold :foreground "#fdf4c1" :font "Lucida Grande" :height 2.0 :underline nil))))
 '(org-level-1 ((t (:inherit default :foreground "#fdf4c1" :slant normal :weight bold :height 1.75 :width normal :foundry "nil" :family "Helvetica Neue"))))
 '(org-level-2 ((t (:inherit default :foreground "#fdf4c1" :slant normal :weight bold :height 1.5 :width normal :foundry "nil" :family "Helvetica Neue"))))
 '(org-level-3 ((t (:inherit default :foreground "orchid" :box (:line-width 5 :color "#282828")))))
 '(org-level-4 ((t (:inherit default :weight bold :foreground "#fdf4c1" :font "Lucida Grande" :height 1.1))))
 '(org-level-5 ((t (:inherit default :weight bold :foreground "#fdf4c1" :font "Lucida Grande"))))
 '(org-level-6 ((t (:inherit default :weight bold :foreground "#fdf4c1" :font "Lucida Grande"))))
 '(org-level-7 ((t (:inherit default :weight bold :foreground "#fdf4c1" :font "Lucida Grande"))))
 '(org-level-8 ((t (:inherit default :weight bold :foreground "#fdf4c1" :font "Lucida Grande"))))
 '(org-link ((t (:foreground "royal blue" :underline t))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
 '(variable-pitch ((t (:weight light :height 180 :family "Helvetica Neue")))))

(setq evil-undo-system 'undo-redo)

(require 'package)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Themes

(load-theme 'gruvbox)
;;(load-theme 'adwaita)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Settings

;; Remove the toolbar
(tool-bar-mode -1)

(toggle-scroll-bar -1)

;; Disable notification sounds
(setq ring-bell-function 'ignore)

;; Line numbers
(global-linum-mode 1)
(setq column-number-mode t)

;; Bar cursor
(setq-default cursor-type 'bar)

;; To replace text that is selected when typing.
(delete-selection-mode 1)

(show-paren-mode 1)

;; White space
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(setq whitespace-line-column 79)
(setq whitespace-global-modes '(not markdown-mode dired-mode wdired-mode))
(global-whitespace-mode t)

;; Auto complete
;; (ac-config-default)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; My key bindings

(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<left>") 'move-beginning-of-line)
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)

;; Doesn't work. OS seems to take control over this.
;; ;; (global-set-key (kbd "s-§") 'other-window)
;; ;; (global-set-key (kbd "s-°") 'other-frame)

;; Fix alt keys
;; ;; (setq ns-alternate-modifier 'meta)
;; ;; (setq ns-right-alternate-modifier 'none)
(setq mac-option-modifier 'meta)
(setq mac-right-option-modifier 'none)
(setq mac-command-modifier 'super)

;; Keybonds
(global-set-key [(super a)] 'mark-whole-buffer)
(global-set-key [(super v)] 'yank)
(global-set-key [(super c)] 'kill-ring-save)
(global-set-key [(super x)] 'kill-region)
(global-set-key [(super s)] 'save-buffer)
(global-set-key [(super f)] 'isearch-forward)
(global-set-key [(super g)] 'isearch-repeat-forward)
(global-set-key [(super shift g)] 'isearch-repeat-backward)
(global-set-key [(super l)] 'goto-line)
(global-set-key [(super w)]
                (lambda () (interactive) (delete-window)))
(global-set-key [(super z)] 'undo)
(global-set-key [(super k)] 'kill-this-buffer)
(global-set-key [(shift super z)] 'evil-redo)
(global-set-key [(super q)] 'save-buffers-kill-emacs)

(global-set-key [(meta up)] 'next-buffer)
(global-set-key [(meta down)] 'previous-buffer)

;; Esc quits
(global-set-key (kbd "<escape>") 'keyboard-quit)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; (use-package evil
;;   :ensure t
;;   :init
;;   (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
;;   (setq evil-want-keybinding nil)
;;   :config
;;   (evil-mode 1))

;; (use-package evil-collection
;;   :after evil
;;   :ensure t
;;   :config
;;   (evil-collection-init))

;; Fix undo

;;(setq evil-undo-system 'undo-redo)

;; (define-key evil-normal-state-map [escape] 'keyboard-quit)
;; https://stackoverflow.com/questions/8483182/evil-mode-best-practice
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)


(define-key evil-normal-state-map "\C-e" 'evil-end-of-line)
(define-key evil-insert-state-map "\C-e" 'end-of-line)
(define-key evil-visual-state-map "\C-e" 'evil-end-of-line)
(define-key evil-motion-state-map "\C-e" 'evil-end-of-line)
(define-key evil-normal-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-w" 'evil-delete)
(define-key evil-visual-state-map "\C-w" 'evil-delete)
(define-key evil-normal-state-map "\C-y" 'yank)
(define-key evil-insert-state-map "\C-y" 'yank)
(define-key evil-visual-state-map "\C-y" 'yank)
(define-key evil-normal-state-map "\C-k" 'kill-line)
(define-key evil-insert-state-map "\C-k" 'kill-line)
(define-key evil-visual-state-map "\C-k" 'kill-line)


(define-key evil-normal-state-map "\C-u" 'evil-scroll-up)
(define-key evil-insert-state-map "\C-u" 'evil-scroll-up)
(define-key evil-visual-state-map "\C-u" 'evil-scroll-up)
(define-key evil-motion-state-map "\C-u" 'evil-scroll-up)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Other
;; Fixa ada newline
(setq ada-ret-binding 'ada-indent-newline-indent-conditional)

(defun window-split-flip ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
	     (next-win-buffer (window-buffer (next-window)))
	     (this-win-edges (window-edges (selected-window)))
	     (next-win-edges (window-edges (next-window)))
	     (this-win-2nd (not (and (<= (car this-win-edges)
					 (car next-win-edges))
				     (<= (cadr this-win-edges)
					 (cadr next-win-edges)))))
	     (splitter
	      (if (= (car this-win-edges)
		     (car (window-edges (next-window))))
		  'split-window-horizontally
		'split-window-vertically)))
	(delete-other-windows)
	(let ((first-win (selected-window)))
	  (funcall splitter)
	  (if this-win-2nd (other-window 1))
	  (set-window-buffer (selected-window) this-win-buffer)
	  (set-window-buffer (next-window) next-win-buffer)
	  (select-window first-win)
	  (if this-win-2nd (other-window 1))))))

;; To make shift mouse click extend selected text
(define-key global-map (kbd "<S-down-mouse-1>") 'mouse-save-then-kill)

;; Neotree
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(global-set-key (kbd "s-t") 'neotree-toggle)
(setq neo-window-fixed-size nil)

;; Flymd
(defun my-flymd-browser-function (url)
  (let ((process-environment (browse-url-process-environment)))
    (apply 'start-process
           (concat "firefox " url)
           nil
           "/usr/bin/open"
           (list "-a" "firefox" url))))
(setq flymd-browser-open-function 'my-flymd-browser-function)
(setq flymd-output-directory "/Users/martinclason/.emacs.d/flymd-temp")
(add-hook 'markdown-mode-hook (lambda () (visual-line-mode)))

;; Dash integration
(global-set-key (kbd "s-d") 'dash-at-point)
(global-set-key (kbd "s-e") 'dash-at-point-with-docset)

;; Helm
(require 'helm-config)

;; lsp config inspiration:
;; https://emacs-lsp.github.io/lsp-mode/tutorials/CPP-guide/

(setq package-selected-packages '(lsp-mode yasnippet lsp-treemacs helm-lsp
    projectile hydra flycheck company avy which-key helm-xref dap-mode))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))

;; sample `helm' configuration use https://github.com/emacs-helm/helm/ for details
(helm-mode)
(require 'helm-xref)
(define-key global-map [remap find-file] #'helm-find-files)
(define-key global-map [remap execute-extended-command] #'helm-M-x)
(define-key global-map [remap switch-to-buffer] #'helm-mini)

;; Have tab auto complete in helm
(define-key helm-map (kbd "TAB") #'helm-execute-persistent-action)
(define-key helm-map (kbd "<tab>") #'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z") #'helm-select-action)


(which-key-mode)
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      company-idle-delay 0.0
      company-minimum-prefix-length 1
      lsp-idle-delay 0.1)  ;; clangd is fast

(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (require 'dap-cpptools)
  (yas-global-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Font-lock

;; (require 'font-lock)

;; (defun --copy-face (new-face face)
;;   "Define NEW-FACE from existing FACE."
;;   (copy-face face new-face)
;;   (eval `(defvar ,new-face nil))
;;   (set new-face new-face))

;; (--copy-face 'font-lock-label-face  ; labels, case, public, private, proteced, namespace-tags
;;          'font-lock-keyword-face)
;; (--copy-face 'font-lock-doc-markup-face ; comment markups such as Javadoc-tags
;;          'font-lock-doc-face)
;; (--copy-face 'font-lock-doc-string-face ; comment markups
;;          'font-lock-comment-face)

;; (global-font-lock-mode t)
;; (setq font-lock-maximum-decoration t)

;; (font-lock-add-keywords 'c++-mode
;;  `((,(concat
;;    "\\<[_a-zA-Z][_a-zA-Z0-9]*\\>"       ; Object identifier
;;    "\\s *"                              ; Optional white space
;;    "\\(?:\\.\\|->\\)"                   ; Member access
;;    "\\s *"                              ; Optional white space
;;    "\\<\\([_a-zA-Z][_a-zA-Z0-9]*\\)\\>" ; Member identifier
;;    "\\s *"                              ; Optional white space
;;    "(")                                 ; Paren for method invocation
;;    1 'font-lock-function-name-face t)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hooks

;;(add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)

(defun my-c++-hook ()
	     (c-set-style "bsd")
	     (c-set-offset 'innamespace [4])
	     (setq c-basic-offset 4)
	     (hs-minor-mode 1)
	     (local-set-key (kbd "RET") 'newline-and-indent)
	     (hs-minor-mode)
             (local-set-key (kbd "M-s M-a") 'hs-show-block)
             (local-set-key (kbd "M-s M-d") 'hs-hide-block)
             (local-set-key (kbd "M-s M-s") 'hs-toggle-hiding)
	     )

;; (add-hook 'c++-mode-hook
;; 	  '(lambda ()
;; 	  (auto-jump-init '(("for" . ("for" "hej" "hopp"))))))
;;       ;; '(lambda()
;;       ;;   ;; (font-lock-add-keywords
;;       ;;   ;;  nil '(;; complete some fundamental keywords
;;       ;;   ;;    ("\\<\\(void\\|unsigned\\|signed\\|char\\|short\\|bool\\|int\\|long\\|float\\|double\\)\\>" . font-lock-keyword-face)
;;       ;;   ;;    ;; add the new C++11 keywords
;;       ;;   ;;    ("\\<\\(alignof\\|alignas\\|constexpr\\|decltype\\|noexcept\\|nullptr\\|static_assert\\|thread_local\\|override\\|final\\)\\>" . font-lock-keyword-face)
;;       ;;   ;;    ("\\<\\(char[0-9]+_t\\)\\>" . font-lock-keyword-face)
;;       ;;   ;;    ;; PREPROCESSOR_CONSTANT
;;       ;;   ;;    ("\\<[A-Z]+[A-Z_]+\\>" . font-lock-constant-face)
;;       ;;   ;;    ;; hexadecimal numbers
;;       ;;   ;;    ("\\<0[xX][0-9A-Fa-f]+\\>" . font-lock-constant-face)
;;       ;;   ;;    ;; integer/float/scientific numbers
;;       ;;   ;;    ("\\<[\\-+]*[0-9]*\\.?[0-9]+\\([ulUL]+\\|[eE][\\-+]?[0-9]+\\)?\\>" . font-lock-constant-face)
;;       ;;   ;;    ;; user-types (customize!)
;;       ;;   ;;    ("\\<[A-Za-z_]+[A-Za-z_0-9]*_\\(t\\|type\\|ptr\\)\\>" . font-lock-type-face)
;;       ;;   ;;    ("\\<\\(xstring\\|xchar\\)\\>" . font-lock-type-face)
;;       ;;   ;;    ))
;;       ;; 	 (auto-jump-init (("for" . ("for" "hopp" "mmmm"))))
;;       ;; 	 ))
;;       ;;    ;;t))

(add-hook 'c++-mode-hook 'my-c++-hook)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;; (setq auto-mode-alist (cons '("\\.h$" . c++-mode) auto-mode-alist))


(setq c-default-style "linux"
      c-basic-offset 4)

(setq-default c-basic-offset 4)


;; Auto jump
;;(load "~/.emacs.d/auto-jump.el")
;; (global-set-key (kbd "C-c SPC") 'auto-jump-deduce)

;; (add-hook 'c++-mode-hook
;; 	  '(lambda ()
;; 	     (auto-jump-init '(("for" . ("for ("
;; 					 "; "
;; 					 "; "
;; 					 ")\n{\n"
;; 					 "\n};"
;; 					 ""))))))

(add-hook 'ada-mode-hook
	  '(lambda ()
	     (auto-jump-init '(("procedure" . ("procedure "
					       " is\n"
					       "begin\n"
					       "end "
					       ";"))))))


;; Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(require 'org-bullets)
;; (add-hook 'org-mode-hook (lambda ()
;; 			   (begin
;; 			    (org-bullets-mode 1)
;; 			    (setq whitespace-style (delete 'lines-tail whitespace-style)))))
(add-hook 'org-mode-hook (lambda ()
			   (org-bullets-mode 1)))
(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook (lambda ()
			   (setq whitespace-style
				 (remove 'lines-tail whitespace-style))))


;; Markdown customization
;; (add-hook 'markdown-mode-hook 'variable-pitch-mode)
;; (add-hook 'markdown-mode-hook 'mixed-pitch-mode)
;; (add-hook 'markdown-mode-hook 'visual-line-mode)

;; (add-hook 'markdown-mode-hook (lambda () (linum-mode 0)))


;; Org customization

;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
;; embedded in literate Org-mode files.


;; Load up Org Mode and (now included) Org Babel for elisp embedded in Org Mode files
;; (setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))

;; (let* ((org-dir (expand-file-name
;;                  "lisp" (expand-file-name
;;                          "org" (expand-file-name
;;                                 "src" dotfiles-dir))))
;;        (org-contrib-dir (expand-file-name
;;                          "lisp" (expand-file-name
;;                                  "contrib" (expand-file-name
;;                                             ".." org-dir))))
;;        (load-path (append (list org-dir org-contrib-dir)
;;                           (or load-path nil))))
;;   ;; load up Org-mode and Org-babel
;;   (require 'org-install)
;;   (require 'ob-tangle))

;; ;; load up all literate org-mode files in this directory
;; (mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))

;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((c++ . t)))

;; (Defun my-org-keys ()
;;   (define-key 'org-mode-map (kbd "<M-right>") nil)
;;   (define-key 'org-mode-map (kbd "<M-left>") nil)
;;   (define-key 'org-mode-map (kbd "<M-S-right>") 'org-metaright)
;;   (define-key 'org-mode-map (kbd "<M-S-left>") 'org-metaleft)
;;   ;; (local-unset-key (kbd "<M-left>"))
;;   ;; (local-unset-key (kbd "<M-right>"))
;;   ;; (local-set-key (kbd "<M-S-left>") 'org-metaleft)
;;   ;; (local-set-key (kbd "<M-S-right>") 'org-metaright)
;;   )

;; (add-hook 'org-mode-hook 'my-org-keys)

(setq org-hide-emphasis-markers t)

;; Font lock for lists
;; (font-lock-add-keywords 'org-mode
;;                         '(("^ *\\([-]\\) "
;;                            (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "-"))))))

(font-lock-add-keywords 'org-mode
                        '(("^ +\\([-*]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(let* ((variable-tuple
        (cond ((x-list-fonts "Helvetica Neue") '(:font "Helvetica Neue"))
              ((x-list-fonts "Lucida Grande")   '(:font "Lucida Grande"))
              ((x-list-fonts "Verdana")         '(:font "Verdana"))
              ((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (base-font-color     (face-foreground 'default nil 'default))
       (headline           `(:inherit default :weight bold :foreground ,base-font-color)))

  (custom-theme-set-faces
   'user
   `(org-level-8 ((t (,@headline ,@variable-tuple))))
   `(org-level-7 ((t (,@headline ,@variable-tuple))))
   `(org-level-6 ((t (,@headline ,@variable-tuple))))
   `(org-level-5 ((t (,@headline ,@variable-tuple))))
   `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
   `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
   `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
   `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
   `(org-document-title ((t (,@headline ,@variable-tuple :height 2.0 :underline nil))))
   ;; `(markdown-header-face-8 ((t (,@headline ,@variable-tuple))))
   ;; `(markdown-header-face-7 ((t (,@headline ,@variable-tuple))))
   ;; `(markdown-header-face-6 ((t (,@headline ,@variable-tuple))))
   ;; `(markdown-header-face-5 ((t (,@headline ,@variable-tuple))))
   ;; `(markdown-header-face-4 ((t (,@headline ,@variable-tuple :height 1.1))))
   ;; `(markdown-header-face-3 ((t (,@headline ,@variable-tuple :height 1.25))))
   ;; `(markdown-header-face-2 ((t (,@headline ,@variable-tuple :height 1.5))))
   ;; `(markdown-header-face-1 ((t (,@headline ,@variable-tuple :height 1.75))))
   ))


;; fixed width
(custom-theme-set-faces
 'user
 '(variable-pitch ((t (:family "Helvetica Neue" :height 180 :weight light))))
 '(fixed-pitch ((t ( :family "Source Code Pro" :slant normal :weight normal :height 1.0 :width normal)))))


(add-hook 'org-mode-hook 'variable-pitch-mode)
(add-hook 'org-mode-hook 'mixed-pitch-mode)
(add-hook 'org-mode-hook 'visual-line-mode)

(custom-theme-set-faces
 'user
 '(org-block                 ((t (:inherit fixed-pitch))))
 '(org-document-info         ((t (:foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-link                  ((t (:foreground "royal blue" :underline t))))
 '(org-meta-line             ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value        ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword       ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-tag                   ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
 '(org-verbatim              ((t (:inherit (shadow fixed-pitch))))))

(add-hook 'org-mode-hook (lambda () (linum-mode 0)))

;; https://zzamboni.org/post/beautifying-org-mode-in-emacs/



;; Org paste image from clipboard
(defun my-org-screenshot ()
  "Take a screenshot into a time stamped unique-named file in the
same directory as the org-buffer and insert a link to this file."
  (interactive)
  (setq filename
        (concat
         (make-temp-name
          (concat (buffer-file-name)
                  "_"
                  (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
  (call-process "import" nil nil nil filename)
  (insert (concat "[[" filename "]]"))
  (org-display-inline-images))

(require 'org-download)


;; Org capture

(global-set-key (kbd "C-c c") 'org-capture)

;; (add-to-list 'org-capture-templates
;; 	     '("f" "Fråga utan svar" entry
;; 	       (file+headline "~/unidrive/Läk/cache/frågecache.org" "Frågor utan svar")
;; 	       "** TODO Fråga %^{Fråga}p %^G \n:PROPERTIES:\n:Fråga: \n:Svar: \n:Mål:" :empty-lines 1))

;; (setq org-capture-templates
;;       '(("t" "Todo" entry (file "~/.notes" "Tasks")
;;          "* TODO %?\n  %i\n  %a")
;;         ("f" "Fråga utan svar" entry
;; 	  (file+headline "~/unidrive/Läk/cache/frågecache.org" "Frågor utan svar")
;; 	  "** TODO Fråga %^{Fråga}p %^G \n:PROPERTIES:\n:Fråga: \n:Svar: \n:Mål:" :empty-lines 1)
;;       ;; PURCHASE (p) Purchase template
;;       ("pp" "PURCHASE  (p) Purchase" entry (file "~/ref.org")
;;        "* PURCHASE %?
;;   :PROPERTIES:
;;   :Cost:
;;   :Paid:
;;   :Method:   [[fin:%^{Method|Wells Fargo Credit Account|Wells Fargo Checking Account|Wells Fargo Debit Account|GE Capital Credit Card}][%\\1]]
;;   :Merchant: [[peo:%^{Merchant}][%\\2]]
;;   :Link:
;;   :Quantity:
;;   :Via:
;;   :Note:
;;   :END:
;;   :LOGBOOK:
;;   - State \"PURCHASE\"   from \"\"           %U
;;   :END:")))




;; Capture Templates for TODO tasks
(setq org-capture-templates
      '(
	("f" "Fråga utan svar" entry (file+headline "~/unidrive/Läk/cache/frågecache.org"
						    "Frågor")
"** TODO %^{Fråga}
   Created: %T
  :PROPERTIES:
  :Fråga:   %\\1
  :Svar:
  :Mål:
  :END:" :kill-buffer t :empty-lines 1)

	("F" "Fråga med svar" entry (file+headline "~/unidrive/Läk/cache/frågecache.org"
						    "Frågor")
"** DONE %^{Fråga}
   Created: %T
  :PROPERTIES:
  :Fråga:   %\\1
  :Svar: %^{Svar}
  :Mål:
  :END:" :kill-buffer t :empty-lines 1)

	("s" "Frågeskiss" entry (file+headline "~/unidrive/Läk/cache/frågecache.org"
						    "Frågor")
"** SKISS %^{Fråga}
   Created: %T
  :PROPERTIES:
  :Fråga:
  :Svar:
  :Mål:
  :END:" :kill-buffer t :empty-lines 1)

;; 	("t" "Test" entry (file+headline "~/unidrive/Läk/cache/frågecache.org"
;; 						    "Test")
;; "** SKISS %^{PROMPT}
;;    Created: %T
;;   :PROPERTIES:
;;   :Fråga:
;;   :Svar:
;;   :Mål:
;;   :END:" :kill-buffer t :empty-lines 1)


;; 	("n"
;;          "Add a note to abc.org file "
;;          entry
;;          (file+headline "~/unidrive/Läk/cache/frågecache.org" "logg")
;;          (concat "* %^{Logg} "
;;                   "%(flet ((org-get-tags-string () \":NOTE:\")) (org-set-tags))"
;;                   " :NOTE:\n%?")
;;          :prepend t
;;          :empty-lines 1
;;          )
	))


(defun my-capture-hook ()
  (when (string= "t" (plist-get org-capture-plist :key))
    (org-align-all-tags)))

(add-hook 'org-capture-mode-hook #'my-capture-hook)

;; Automatically change todo mark of whole selection in org-mode
;; https://emacs.stackexchange.com/questions/38529/make-multiple-lines-todos-at-once-in-org-mode
(defun my/mark-todo-in-region ()
  (interactive)
  (let (
	(scope (if mark-active 'region 'tree))
	(state (org-fast-todo-selection)))
    (org-map-entries (lambda () (org-todo state)) nil scope)))



(defun find-user-init-file ()
  "Edit the `user-init-file', in another window."
  (interactive)
  (find-file-other-window "~/.emacs.d/init.el"))

(global-set-key (kbd "C-c i") #'find-user-init-file)


(setq org-todo-keyword-faces
      '(("SKISS" . org-warning) ("TODO" . "yellow")))
;;	("TODO" . org-warning) ("STARTED" . "yellow")))
;;        ("DONE" . (:foreground "green" :weight bold))))


;; Agenda

(global-set-key (kbd "C-c a") 'org-agenda)


(defun org-make-file-link (start end)
  "Create link"
  (interactive "r")
  (if (use-region-p)
      (let ((s (buffer-substring start end)))
	(delete-region start end)
	(insert
	 (org-make-link-string "file:hej" s))
	
	)))



(global-set-key (kbd "C-c l") 'org-make-file-link)


;; Elpy
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t) ; optional



;; Own functions
(defun no_tail_lines ()
  (setq whitespace-style (remove 'lines-tail whitespace-style)))


(require 'labass-init "~/.emacs.d/labass-init.el")
;(load "labass-init.el")


;; Irony mode
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; https://github.com/Sarcasm/irony-mode/issues/138
; (custom-set-variables
;    '(irony-additional-clang-options
;      '("-I/Library/Developer/CommandLineTools/usr/include/c++/v1")))

;; Company
(add-hook 'after-init-hook 'global-company-mode)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))



;; My functions

(defun fix-åäö (beg end)
  "Replaces a ̊, a ̈, o ̈ with å, ä, ö respectively."
  (interactive (if (use-region-p)
                   (list (region-beginning) (region-end))
                 (list nil nil)))
  ;; (query-replace "a ̈" "ä" nil beg end)
  (mapc (lambda (arg) (perform-replace (car arg) (cdr arg) nil nil nil nil nil beg end))
	'(("a ̊" . "å")
	  ("a ̈" . "ä")
	  ("o ̈" . "ö")))
  ;; (perform-replace "a" "ä" nil nil nil nil nil beg end)
  ;; (perform-replace "j" "å" nil nil nil nil nil beg end)
  )
