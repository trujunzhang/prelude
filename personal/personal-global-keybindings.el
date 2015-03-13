;;(require 'bind-key)


;;(bind-key "C-x f" 'projectile-find-file)
;;(bind-key "S-e" 'bookmark-bmenu-list)

(message "personal-global-keybinding..............")


(global-set-key (kbd "C-c w")  'project-explorer-open)


(global-set-key [f9] 'package-list-packages-no-fetch)


(provide 'personal-global-keybindings)
