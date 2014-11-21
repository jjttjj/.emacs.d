(if (string-equal system-type "windows-nt")
    (setenv "GIT_ASKPASS" "git-gui--askpass"))

(provide 'setup-magit)
