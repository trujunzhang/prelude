;;; Code

(require 'editorconfig)
(editorconfig-mode 1)

;; (require 'markdown-mode)
;; (pushnew '("\\.md\\'" . markdown-mode) auto-mode-alist)

(require 'pandoc-mode)
(add-hook 'markdown-mode-hook 'pandoc-mode)
(add-hook 'pandoc-mode-hook 'pandoc-load-default-settings)

(provide 'djzhang-mkdown)
