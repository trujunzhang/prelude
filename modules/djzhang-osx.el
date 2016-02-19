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

;; Configuration

;; Put this line into your ~/.emacs file:

;; Watching YouTube without a browser
;; http://jordiinglada.net/wp/2013/08/09/watching-youtube-without-a-browser-2/

;; (defun play-youtube-video (url)  
;;   (interactive "sURL: ")  
;;   (shell-command
;;    (concat "youtube-dl  -o - " url " | vlc -")))

;; (global-set-key (kbd "<f9> Y") 'play-youtube-video)

;; (defun w3m-play-youtube-video ()  
;;   (interactive)  
;;   (play-youtube-video
;;    (w3m-print-this-url (point))))

;; (global-set-key (kbd "<f9> y") 'w3m-play-youtube-video)

;; https://www.emacswiki.org/emacs?action=edit;id=Desktop
(require 'desktop)
(desktop-save-mode 1)

;; https://github.com/skuro/puml-mode
;; Enable puml-mode for PlantUML files
(add-to-list 'auto-mode-alist '("\\.puml\\'" . puml-mode))
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . puml-mode))

(provide 'djzhang-osx)

;;; djzhang-osx.el ends here
