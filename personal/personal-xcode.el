
;;; http://roupam.github.io

;;; If you have w3m installed for use from within your Emacs, then you can view and search XCode docsets. There’s nifty little tool that you can get from here https://github.com/roupam/emacs-xcode-document-viewer

(require 'xcode-document-viewer)
(setq xcdoc:document-path "/Users/djzhang/Library/Developer/Shared/Documentation/DocSets/com.apple.adc.documentation.iOS.docset")
(setq xcdoc:open-w3m-other-buffer t)



(require 'anything)
(require 'anything-config)

(defvar anything-c-source-objc-headline
  '((name . "Objective-C Headline")
    (headline  "^[-+@]\\|^#pragma mark")))

(defun objc-headline ()
  (interactive)
  ;; Set to 500 so it is displayed even if all methods are not narrowed down.
  (let ((anything-candidate-number-limit 500))
    (anything-other-buffer '(anything-c-source-objc-headline)
                           "*ObjC Headline*")))


(global-set-key "\C-xp" 'objc-headline)



;; --- Obj-C switch between header and source ---

(defun objc-in-header-file ()
  (let* ((filename (buffer-file-name))
         (extension (car (last (split-string filename "\\.")))))
    (string= "h" extension)))

(defun objc-jump-to-extension (extension)
  (let* ((filename (buffer-file-name))
         (file-components (append (butlast (split-string filename
                                                         "\\."))
                                  (list extension))))
    (find-file (mapconcat 'identity file-components "."))))

;;; Assumes that Header and Source file are in same directory
(defun objc-jump-between-header-source ()
  (interactive)
  (if (objc-in-header-file)
      (objc-jump-to-extension "m")
    (objc-jump-to-extension "h")))

(defun objc-mode-customizations ()
  (define-key objc-mode-map (kbd "C-c t") 'objc-jump-between-header-source))

(add-hook 'objc-mode-hook 'objc-mode-customizations)
