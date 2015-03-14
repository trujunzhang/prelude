;;(require 'bind-key)



(message "personal-global-keybinding..............")


(global-set-key [f9] 'project-explorer-open)
(global-set-key [f10] 'bookmark-bmenu-list)



(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-0") 'delete-window)


(provide 'personal-global-keybindings)
