(require 'clojure-mode)

(require 'cider)

;;ripped off from:



;;;;

;; Indent and highlight more commands
(put-clojure-indent 'match 'defun)

;; Hide nrepl buffers when switching buffers (switch to by prefixing with space)
(setq nrepl-hide-special-buffers t)


;; Enable error buffer popping also in the REPL:
(setq cider-repl-popup-stacktraces nil)
(setq cider-show-error-buffer 'only-in-repl)
(setq cider-stacktrace-fill-column 80)


;; auto-select the error buffer when it's displayed
(setq cider-auto-select-error-buffer t)
;; Prevent the auto-display of the REPL buffer in a separate window after connection is established
(setq cider-repl-pop-to-buffer-on-connect nil)
;; Enable eldoc in Clojure buffers
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)



(autoload 'clojure-mode "clojure-mode")
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljx$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.hl" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.boot" . clojure-mode))

;;these maybe dont belong here
(add-hook 'clojure-mode-hook (lambda () (paredit-mode 1)))
(add-hook 'clojure-mode-hook (lambda () (rainbow-delimiters-mode 1)))
(add-hook 'clojure-mode-hook (lambda () (highlight-parentheses-mode 1)))
(add-hook 'clojure-mode-hook (lambda () (show-paren-mode 1)))

;;clj-refactor
(require 'clj-refactor)
(add-hook 'clojure-mode-hook (lambda ()
                               (clj-refactor-mode 1)

                               (cljr-add-keybindings-with-prefix "C-c C-m")

                               ))

;;hoplon indentation
(put-clojure-indent 'defc 'defun)
(put-clojure-indent 'defc= 'defun)
(put-clojure-indent 'loop-tpl 1)
(put-clojure-indent 'div 1)



(provide 'setup-clojure-mode)
