(require 'paredit)
(require 'dash)

(add-hook 'clojure-mode-hook (lambda () (paredit-mode 1)))
(add-hook 'cider-repl-mode-hook (lambda () (paredit-mode 1)))
(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode 1)))

;; ; Enable `paredit-mode' in the minibuffer, during `eval-expression'.
;; (defun conditionally-enable-paredit-mode ()
;;   (if (eq this-command 'eval-expression)
;;       (paredit-mode 1)))

;; (add-hook 'minibuffer-setup-hook 'conditionally-enable-paredit-mode)

(provide 'setup-paredit)
