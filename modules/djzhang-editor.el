;;; prelude-c.el --- Emacs Prelude: cc-mode configuration.
;;
;; Copyright © 2011-2015 Bozhidar Batsov
;;
;; Author: Bozhidar Batsov <bozhidar@batsov.com>
;; URL: https://github.com/bbatsov/prelude
;; Version: 1.0.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Some basic configuration for cc-mode and the modes derived from it.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

;; multiple-cursors-mode
(require 'multiple-cursors)

;; When you have an active region that spans multiple lines, the following will add a cursor to each line:

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; When you want to add multiple cursors not based on continuous lines, but based on keywords in the buffer, use:

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; First mark the word, then add more cursors.

;; To get out of multiple-cursors-mode, press <return> or C-g. The latter will first disable multiple regions before disabling multiple cursors. If you want to insert a newline in multiple-cursors-mode, use C-j.

(require 'ecb)
;;(require 'ecb-autoloads)

;; Enable EDE (Project Management) features
(global-ede-mode 1)

(setq ecb-auto-activate t)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator

(setq ecb-tip-of-the-day nil)

;; http://ecb.sourceforge.net/docs/Changing-the-ECB-layout.html
;; (setq ecb-layout-name "left-symboldef") 
;;(setq ecb-layout-name 'left7)
(setq ecb-show-sources-in-directories-buffer 'always)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-layout-name "left7")
 ;;'(ecb-layout-window-sizes (quote (("left7" (0.2564102564102564 . 0.6949152542372882) (0.2564102564102564 . 0.23728813559322035)))))
 ;;'(ecb-options-version "2.40")
 ;;'(ecb-source-path (quote ("d:/myRailsProject" "d:/useful scripts")))
 '(ecb-source-path (quote ("/Users/djzhang/Desktop/github" "/Users/djzhang/.emacs.d"))) 
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
 '(ecb-tip-of-the-day nil)
 '(ecb-compile-window-height 4)
 '(ecb-tree-buffer-style (quote ascii-guides)))

(setq project-list '("/Users/djzhang/Desktop/wikipedia/apps-android-wikipedia" "/Users/djzhang/.emacs.d"))

(defun ecb-custom-set()
  (interactive)
  
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(ecb-layout-name "left7")
   ;;'(ecb-layout-window-sizes (quote (("left7" (0.2564102564102564 . 0.6949152542372882) (0.2564102564102564 . 0.23728813559322035)))))
   ;;'(ecb-options-version "2.40")
   ;;'(ecb-source-path (quote ("d:/myRailsProject" "d:/useful scripts")))
   '(ecb-source-path (quote project-list)) 
   '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
   '(ecb-tip-of-the-day nil)
   '(ecb-compile-window-height 4)
   '(ecb-tree-buffer-style (quote ascii-guides)))  
  )

;;; activate and deactivate ecb
(global-set-key (kbd "C-x C-;") 'ecb-activate)
(global-set-key (kbd "C-x C-'") 'ecb-deactivate)
;;; show/hide ecb window
(global-set-key (kbd "C-;") 'ecb-show-ecb-windows)
(global-set-key (kbd "C-'") 'ecb-hide-ecb-windows)
;;; quick navigation between ecb windows
(global-set-key (kbd "C-)") 'ecb-goto-window-edit1)
(global-set-key (kbd "C-!") 'ecb-goto-window-directories)
(global-set-key (kbd "C-@") 'ecb-goto-window-sources)
(global-set-key (kbd "C-#") 'ecb-goto-window-methods)
(global-set-key (kbd "C-$") 'ecb-goto-window-compilation)

(defun ecb-projectile-tree-view ()
  "set ecb-source-path by projectile-directories when it is projectile-mode."
  (interactive)
  (when (and projectile-mode
             (equal 'visible (ecb-compile-window-state)))
    ;;(let ecb-project-path (projectile-get-project-directories))
    (setq ecb-project-path "/User/djzhang/Desktop/github")
    ;;(ecb-source-path (quote (ecb-project-path)))
    ;;(ecb-add-source-path (projectile-get-project-directories))
    ;;(ecb-add-source-path (projectile-get-project-directories))
    (message ecb-add-source-path)
    ))

(global-set-key (kbd "<f9> h") 'ecb-custom-set)
;;(global-set-key (kbd "<f9> h") 'w3m-gohome)

;;(projectile-get-project-directories)

;;(type-of '(projectile-get-project-directories))
;;(concat "" '(projectile-get-project-directories))

(provide 'djzhang-editor)

;;; djzhang-editor.el ends here

