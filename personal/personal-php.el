;; http://web-mode.org

;; Install

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; Using web-mode for editing plain HTML files can be done this way
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Associate an engine

;; A specific engine can be forced with web-mode-engines-alist.

(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\."))
      )

;; Associate a content type

;; web-mode.el can deal with many content types: html, xml, javascript, jsx, json, css. This was needed to edit *.js.erb files for example: js files that embed ruby blocks.

;; Sometimes, web-mode.el can not guess the content type with the file extension.
;; e.g. you want to associate *.api files with web-mode.

;; The var web-mode-content-types-alist can be used to associate a file path with a content type

(add-to-list 'auto-mode-alist '("\\.api\\'" . web-mode))
(add-to-list 'auto-mode-alist '("/some/react/path/*\\.js[x]?\\'" . web-mode))

(setq web-mode-content-types-alist
      '(("json" . "/some/path/*\\.api\\'")
        ("xml"  . "/other/path/*\\.api\\'")
        ("jsx"  . "/some/react/path/*\\.js[x]?\\'")))

;; Snippets
;; Add a snippet
(setq web-mode-extra-snippets
      '(("erb" . (("toto" . ("<% toto | %>\n\n<% end %>"))))
        ("php" . (("dowhile" . ("<?php do { ?>\n\n<?php } while (|); ?>"))
                  ("debug" . ("<?php error_log(__LINE__); ?>"))))
        ))
;; The character | is used to locate the cursor position (this is optional)
;; Auto-pairs
;; Add auto-pair
(setq web-mode-extra-auto-pairs
      '(("erb"  . (("beg" "end")))
        ("php"  . (("beg" "end")
                   ("beg" "end")))
        ))



(provide 'personal-php)
