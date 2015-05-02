;;(require 'bind-key)



(message "personal-global-keybinding..............")


(global-set-key [f9] 'project-explorer-toggle)
(global-set-key [f10] 'bookmark-bmenu-list)



(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "M-w") 'mark-word)


;;; multiple-cursor
;;; Start out with:

(require 'multiple-cursors)
;;; Then you have to set up your keybindings - multiple-cursors doesn't presume to know how you'd like them laid out. Here are some examples:

;;; When you have an active region that spans multiple lines, the following will add a cursor to each line:

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;;; When you want to add multiple cursors not based on continuous lines, but based on keywords in the buffer, use:

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;;; First mark the word, then add more cursors.

;;;; To get out of multiple-cursors-mode, press <return> or C-g. The latter will first disable multiple regions before disabling multiple cursors. If you want to insert a newline in multiple-cursors-mode, use C-j.


(provide 'personal-global-keybindings)
