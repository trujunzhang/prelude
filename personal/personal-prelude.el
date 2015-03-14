;;; plguin: real-auto-save

(require 'real-auto-save)
(add-hook 'prog-mode-hook 'real-auto-save-mode)

(setq real-auto-save-interval 5) ;; in seconds

;; Poor ido matching performance on large datasets
(setq flx-ido-threshold 1000)
(flx-ido-mode -1)


;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)


;;; guide-key
(setq guide-key/guide-key-sequence '("C-x r" "C-x 4"))
(guide-key-mode 1)  ; Enable guide-key-mode
(setq guide-key/highlight-command-regexp "rectangle")



(provide 'personal-prelude)
