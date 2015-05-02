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

;;; dired-single
(autoload 'dired-single-buffer "dired-single" "" t)
(autoload 'dired-single-buffer-mouse "dired-single" "" t)
(autoload 'dired-single-magic-buffer "dired-single" "" t)
(autoload 'dired-single-toggle-buffer-name "dired-single" "" t)


;;; imenu-anywhere
(global-set-key (kbd "C-.") 'imenu-anywhere)

;;; image-dired+
(eval-after-load 'image-dired+ '(image-diredx-adjust-mode 1))

;;;* Key bindings to replace `image-dired-next-line' and `image-dired-previous-line'

(define-key image-dired-thumbnail-mode-map "\C-n" 'image-diredx-next-line)
(define-key image-dired-thumbnail-mode-map "\C-p" 'image-diredx-previous-line)

(require 'emms-setup)
(emms-all)
(emms-default-players)

(setq emms-source-file-default-directory "/Users/djzhang/Music/youtube-dl")

;; add flv and ogv
(define-emms-simple-player mplayer '(file url)
  (regexp-opt '(".ogg" ".mp3" ".wav" ".mpg" ".mpeg" ".wmv" ".wma"
                ".mov" ".avi" ".divx" ".ogm" ".asf" ".mkv" "http://" "mms://"
                ".rm" ".rmvb" ".mp4" ".flac" ".vob" ".m4a" ".flv" ".ogv" ".pls"))
  "mplayer" "-slave" "-quiet" "-really-quiet" "-fullscreen")




(provide 'personal-prelude)
