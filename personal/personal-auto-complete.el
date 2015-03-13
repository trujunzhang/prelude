(require 'auto-complete-config)

;;; pos-tip
(require 'pos-tip)
(setq ac-quick-help-prefer-pos-tip t)   ;default is t

;;; quick help
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 1.0)

;;; fuzzy mode
(setq ac-fuzzy-enable t)




;;; Select candidates with C-n/C-p only when completion menu is displayed

(setq ac-use-menu-map t)
;; Default settings
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

;;; Change colors
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")

;;; Show a lastly completed candidate help
(define-key ac-mode-map (kbd "C-c h") 'ac-last-quick-help)
(define-key ac-mode-map (kbd "C-c H") 'ac-last-help)


;;; User Defined Dictionary
(setq ac-user-dictionary '("foobar@example.com" "hogehoge@example.com"))




(provide 'personal-auto-complete)
