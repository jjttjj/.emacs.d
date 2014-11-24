(require 'ess-site)

(setq ess-S-assign-key (kbd "C-="))
(ess-toggle-S-assign-key t) ; enable above key definition
;; leave my underscore key alone!
(ess-toggle-underscore nil)

(setq ess-use-auto-complete t)


(setq ess-R-font-lock-keywords
      '((ess-R-fl-keyword:modifiers . t) ; default
        (ess-R-fl-keyword:fun-defs . t) ; default
        (ess-R-fl-keyword:keywords . t) ; default
        (ess-R-fl-keyword:assign-ops . t) ; default
        (ess-R-fl-keyword:constants . t) ; default
        (ess-fl-keyword:fun-calls . t)
        (ess-fl-keyword:numbers . t)
        (ess-fl-keyword:operators . t)
        (ess-fl-keyword:delimiters . t)
        (ess-fl-keyword:= . t)
        (ess-R-fl-keyword:F&T . t)))

(setq inferior-R-font-lock-keywords
      '((ess-S-fl-keyword:prompt . t) ; default
        (ess-R-fl-keyword:messages . t) ; default
        (ess-R-fl-keyword:modifiers . t) ; default
        (ess-R-fl-keyword:fun-defs . t) ; default
        (ess-R-fl-keyword:keywords . t) ; default
        (ess-R-fl-keyword:assign-ops . t) ; default
        (ess-R-fl-keyword:constants . t) ; default
        (ess-fl-keyword:matrix-labels . t) ; default
        (ess-fl-keyword:fun-calls . t)
        (ess-fl-keyword:numbers . t)
        (ess-fl-keyword:operators . t)
        (ess-fl-keyword:delimiters . t)
        (ess-fl-keyword:= . t)
        (ess-R-fl-keyword:F&T . t)))

(provide 'setup-ess)
