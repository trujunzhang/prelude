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

;; yasnippet
(setq Version_Cask "24.5.1")
(setq Version_Yasnippet "20160104.129")

;; For example:
(setq Yasnippet_snippets (concat "~/.emacs.d/.cask/" Version_Cask "/elpa/yasnippet-"  Version_Yasnippet  "/snippets"))

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
                                        ;"/Users/djzhang/.emacs.d/.cask/24.5.1/elpa/yasnippet-20160104.129/snippets"                    ;; foo-mode and bar-mode snippet collection
        Yasnippet_snippets
        ;;"/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
        ;;"/path/to/yasnippet/snippets"         ;; the default collection
        ))
(require 'yasnippet)
(yas-global-mode 1)

(defun create-snippet (filename)
  (interactive "s")
  (let ((mode (symbol-name major-mode)))
    (find-file (format "~/.emacs.d/snippets/%s/%s" mode filename))
    (snippet-mode)))

(global-set-key (kbd "M-'") 'create-snippet)


(provide 'djzhang-yasnippet)

;;; djzhang-yasnippet.el ends here
