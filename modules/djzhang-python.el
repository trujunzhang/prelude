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


;; https://elpy.readthedocs.org

;; Elpy is an extension for the Emacs text editor to work with Python projects.
;; This documentation tries to explain how to use Elpy to work on Python project using Emacs, but it does not aim to be an introduction to either Emacs or Python.
;;(elpy-enable)

;; python-djzhango
;; http://web.archive.org/web/20131010005338/http://from-the-cloud.com/en/emacs/2013/01/28_emacs-as-a-django-ide-with-python-djangoel.html
(require 'python-django)
(global-set-key (kbd "C-x j") 'python-django-open-project)

;; ((python-mode
;;   (python-shell-interpreter . "python")
;;   (python-shell-interpreter-args . "/home/fgallina/Code/Projects/anue-site/anue/manage.py shell")
;;   (python-shell-prompt-regexp . "In \\[[0-9]+\\]: ")
;;   (python-shell-prompt-output-regexp . "Out\\[[0-9]+\\]: ")
;;   (python-shell-completion-setup-code . "from IPython.core.completerlib import module_completion")
;;   (python-shell-completion-module-string-code . "';'.join(module_completion('''%s'''))\n")
;;   (python-shell-completion-string-code . "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")
;;   (python-shell-extra-pythonpaths "/home/fgallina/Code/Projects/anue-site/anue/apps/")
;;   (python-shell-virtualenv-path . "/home/fgallina/.virtualenvs/anue")))


;;(require 'pyenv-mode-auto)

(provide 'djzhang-python)

;;; djzhang-python.el ends here
