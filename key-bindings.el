
;; Smart M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;;(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;magit
(global-set-key (kbd "C-x m") 'magit-status)
(autoload 'magit-status "magit")




(provide 'key-bindings)
