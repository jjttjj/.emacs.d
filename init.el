(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(setq inhibit-startup-message t)

;;much stolen from:
;;https://github.com/magnars/.emacs.d/blob/master/init.el
;; Set path to dependencies
;; (setq site-lisp-dir
;;       (expand-file-name "site-lisp" user-emacs-directory))
(setq site-lisp-dir
      (expand-file-name "elpa" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Settings for currently logged in user
(setq user-settings-dir
      (concat user-emacs-directory "users/" user-login-name))
(add-to-list 'load-path user-settings-dir)


(load "~/.emacs.d/elpa/dash-20140811.523/dash.el")
(require 'setup-package)

; Install extensions if they're missing
(defun init--install-packages ()
  (packages-install
   '(magit
     paredit
     ;;smartparens
     ;;ido-at-point
     clojure-mode
     cider
     hc-zenburn-theme
     smex
     smart-tab
     ess
     rainbow-delimiters
     highlight-parentheses
     auto-complete
     
     ;;experimental

     ;;undo-tree
     ;;guide-key
)))
(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

;;default modes
(electric-indent-mode 1)
(global-visual-line-mode 1)


(require 'appearance)

;; Lets start with a smattering of sanity
(require 'sane-defaults)

(require 'smart-tab)

;;setup-extensions
(require 'setup-hippie)
(require 'setup-ido)
(require 'setup-windmove) ;;move to keybindings?
(require 'setup-paredit)
(require 'setup-magit)
(require 'setup-ess)
(require 'setup-auto-complete)
(require 'setup-recentf)


(require 'setup-clojure-mode)

;;global smart tabs
(global-smart-tab-mode 1)

;; Smart M-x is smart
(require 'smex)
(smex-initialize)

;;lang specific setup files
;;(eval-after-load 'clojure-mode '(require 'setup-clojure-mode))


(require 'key-bindings)


;; Conclude init by setting up specifics for the current user
(when (file-exists-p user-settings-dir)
  (mapc 'load (directory-files user-settings-dir nil "^[^#].*el$")))

;;;;;;;;;;;;;;;;;;;;;;
;;keyboard macros;;
(global-set-key [f10]  'start-kbd-macro)
(global-set-key [f11]  'end-kbd-macro)
(global-set-key [f12]  'call-last-kbd-macro)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;UNORGANIZED

(setq erc-hide-list '("JOIN" "PART" "QUIT"))


(show-paren-mode 1)
