(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

;; Highlight current line
(global-hl-line-mode 1)


(defun set-default-font ()
  (interactive)
  (cond 
   ((string-equal system-type "windows-nt") ; Microsoft Windows
    (progn
      (message "Microsoft Windows")
      (set-face-font 'default "Consolas-14")
      ))
   
   ((string-equal system-type "gnu/linux") ; linux
    (progn
      (message "Linux")
      (set-face-font 'default "Inconsolata-14")
      ))

   ))

(defun use-default-theme ()
  (interactive)
  (load-theme 'hc-zenburn)
  (set-default-font))

(use-default-theme)

;; Don't defer screen updates when performing operations
(setq redisplay-dont-pause t)
;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (blink-cursor-mode -1))

(defmacro rename-modeline (package-name mode new-name)
  `(eval-after-load ,package-name
     '(defadvice ,mode (after rename-modeline activate)
        (setq mode-name ,new-name))))

(rename-modeline "clojure-mode" clojure-mode "Clj")


(provide 'appearance)

