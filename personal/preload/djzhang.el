(message "***** loading djzhang.el ********");


;;; color-theme-solaried
;;(require 'color-theme-solarized)
(setq prelude-theme 'solarized-light)


;;;Disable flyspell-mode
;;; If you're not fond of spellchecking on the fly:
(setq prelude-flyspell nil)

;;; Change font size
(text-scale-increase 4)


;;; toggle fullscreen
(toggle-frame-fullscreen)


;; Show line number
;; (global-linum-mode t)

(provide 'djzhang)
;;; prelude-djzhang.el ends here
