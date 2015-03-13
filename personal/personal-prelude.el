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



(provide 'personal-prelude)
