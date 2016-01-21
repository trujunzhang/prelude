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

(setq prelude-theme 'peacock-theme)


;; Disabling key-chords

;; In some cases you may not want to have a key-chord that is defined by prelude, in which case you can disable the binding in your personal.el file by setting its command to nil. For example, to disable the jj key-chord add the following line:

;; (key-chord-define-global "jj" nil)

;; If you're an evil-mode user you'll probably do well to disable key-chord-mode altogether:

;; (key-chord-mode -1)

;; Preloading personal config

;; Sometimes you might want to load code before Prelude has started loading. Prelude will automatically preload all Emacs Lisp files in your personal/preload directory. Note that at this point you can't using anything from Prelude, except a few variables like prelude-dir, etc (since nothing is yet loaded).

; Disabling whitespace-mode

;; Although whitespace-mode is awesome some people might find it too intrusive. You can disable it in your personal config with the following bit of code:

(setq prelude-whitespace nil)

;; If you like whitespace-mode but prefer it to not automatically cleanup your file on save, you can disable that behavior by setting prelude-clean-whitespace-on-save to nil in your config file with:

(setq prelude-clean-whitespace-on-save nil)

;; The prelude-clean-whitespace-on-save setting can also be set on a per-file or directory basis by using a file variable or a .dir-locals.el file.


;; Disable flyspell-mode

;; If you're not fond of spellchecking on the fly:

(setq prelude-flyspell nil)

;; RVM for shell
(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

;; real auto save.
(require 'real-auto-save)
(add-hook 'prog-mode-hook 'real-auto-save-mode)

;; Auto save interval is 10 seconds by default. You can change it:

;;(setq real-auto-save-interval 6) ;; in seconds


(provide 'djzhang-customize)

;;; djzhang-customize.el ends here
