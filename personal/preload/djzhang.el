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
;;; (toggle-frame-fullscreen)


;;; Disabling whitespace-mode

;;; Although whitespace-mode is awesome some people might find it too intrusive. You can disable it in your personal config with the following bit of code:

(setq prelude-whitespace nil)

;;; If you like whitespace-mode but prefer it to not automatically cleanup your file on save, you can disable that behavior by setting prelude-clean-whitespace-on-save to nil in your config file with:

;;; (setq prelude-clean-whitespace-on-save nil)

;;;; The prelude-clean-whitespace-on-save setting can also be set on a per-file or directory basis by using a file variable or a .dir-locals.el file.



;; Show line number
;; (global-linum-mode t)

(provide 'djzhang)
;;; prelude-djzhang.el ends here
