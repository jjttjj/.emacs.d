(require 'ess-site)

(setq ess-S-assign-key (kbd "C-="))
(ess-toggle-S-assign-key t) ; enable above key definition
;; leave my underscore key alone!
(ess-toggle-underscore nil)

(provide 'setup-ess)
