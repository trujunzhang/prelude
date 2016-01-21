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


;; 2. Settings to use.

;; If you manually installed emmet-mode to ~/emacs.d/emmet-mode/, add the following lines to your init.el or .emacs:

;; (add-to-list 'load-path "~/emacs.d/emmet-mode")
(require 'emmet-mode)
;; If you installed from marmalade/MELPA then these you shouldn't need to do this.

;; Enable it by running M-x emmet-mode.

;; 3. Optional settings

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


(provide 'prelude-website)

;;; prelude-website.el ends here
