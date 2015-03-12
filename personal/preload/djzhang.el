(message "***** loading djzhang.el ********");


;;; color-theme-solaried
;;(require 'color-theme-solarized)
(setq prelude-theme 'solarized-light)


;;;Disable flyspell-mode
;;; If you're not fond of spellchecking on the fly:
(setq prelude-flyspell nil)


;;    (let ((spec '((t (:family "neep alt" :height 120)))))
;;        (mapc (lambda (face)
;;            (face-spec-set face spec)
;;            (put face 'face-defface-spec spec))
;;            '(default menu)))

(text-scale-increase 2)


;;; toggle fullscreen
(toggle-frame-fullscreen)


(provide 'djzhang)
;;; prelude-djzhang.el ends here
