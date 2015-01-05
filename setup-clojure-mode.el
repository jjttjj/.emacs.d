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

;;these maybe dont belong here
(add-hook 'clojure-mode-hook 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'highlight-parentheses)
(add-hook 'clojure-mode-hook 'show-paren-mode)

(autoload 'clojure-mode "clojure-mode")
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljx$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.hl" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.boot" . clojure-mode))



(provide 'setup-clojure-mode)
