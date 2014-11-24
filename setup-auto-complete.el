(global-auto-complete-mode t)

(add-to-list 'ac-modes 'r-mode)

(setq 
      ;; ac-auto-show-menu 1
      ;; ac-candidate-limit nil
 ac-delay 0.01
      ;; ac-disable-faces (quote (font-lock-comment-face font-lock-doc-face))
      ;; ac-ignore-case 'smart
      ;; ac-menu-height 10
  ac-quick-help-delay 0.01
  ac-quick-help-prefer-pos-tip t
  ac-use-quick-help nil
)

(provide 'setup-auto-complete)
