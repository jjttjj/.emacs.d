(require 'clojure-mode)

(require 'cider)


;; Indent and highlight more commands
(put-clojure-indent 'match 'defun)

;; Hide nrepl buffers when switching buffers (switch to by prefixing with space)
(setq nrepl-hide-special-buffers t)


;; Enable error buffer popping also in the REPL:
(setq cider-repl-popup-stacktraces t)


;; auto-select the error buffer when it's displayed
(setq cider-auto-select-error-buffer t)
;; Prevent the auto-display of the REPL buffer in a separate window after connection is established
(setq cider-repl-pop-to-buffer-on-connect nil)
;; Enable eldoc in Clojure buffers
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

(provide 'setup-clojure-mode)
