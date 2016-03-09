

;;; Code:

(require 'emmet-mode)

;; You probably want to add it to auto-load on your sgml modes:

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

;; By default, inserted markup will be indented with indent-region, according to the buffer's mode. To disable this, do:

(add-hook 'emmet-mode-hook (lambda () (setq emmet-indent-after-insert nil)))

;; If you disable indent-region, you can set the default indent level thusly:

(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent 2 spaces.

;; If you want the cursor to be positioned between first empty quotes after expanding:

(setq emmet-move-cursor-between-quotes t) ;; default nil

;; Or if you don't want to move cursor after expanding:

(setq emmet-move-cursor-after-expanding nil) ;; default t

;; If you want to use emmet with react-js's JSX, you probably want emmet to expand 'className="..."' instead of 'class="..."':

(setq emmet-expand-jsx-className? t) ;; default nil




(provide 'djzhang-web)
