

;;; Code:

;;; https://github.com/ChillarAnand/real-auto-save

(require 'real-auto-save)
(add-hook 'prog-mode-hook 'real-auto-save-mode)

;;Auto save interval is 10 seconds by default. You can change it:

(setq real-auto-save-interval 5) ;; in seconds


;;; https://github.com/magnars/multiple-cursors.el

(require 'multiple-cursors)

;; When you have an active region that spans multiple lines, the following will add a cursor to each line:

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; When you want to add multiple cursors not based on continuous lines, but based on keywords in the buffer, use:

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; First mark the word, then add more cursors.

;; To get out of multiple-cursors-mode, press <return> or C-g.
;; The latter will first disable multiple regions before disabling multiple cursors.
;; If you want to insert a newline in multiple-cursors-mode, use C-j.


(provide 'djzhang-editor)
