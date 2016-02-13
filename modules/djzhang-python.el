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
;;(require 'python-django)
;;(global-set-key (kbd "C-x j") 'python-django-open-project)


;;(require 'pyenv-mode-auto)

(require 'celery)

(defun shell-command-on-buffer ()
  "Asks for a command and executes it in inferior shell with current buffer
as input."
  (interactive)
  (shell-command-on-region
   (point-min) (point-max)
   (read-shell-command "Shell command on buffer: ")))

(defun blog-example ()
  (interactive)
  (with-output-to-temp-buffer "*blog-example*"
    (shell-command "celery -A tasks worker --loglevel=info"
                   "*blog-example*"
                   "*Messages*")
    (pop-to-buffer "*blog-example*")))

  (defun celery-tasks-info ()
    "Running the celery worker server."
    (interactive)
    ;;(setq javac-command (concat "javac -cp " javac-classpath " " buffer-file-name))
    (setq celery-task-type "tasks worker")
    (setq log-level "--loglevel=info")
    (setq celery-command (concat "celery -A " celery-task-type " " log-level))
    ;;(setq celery-command ("celery -A tasks worker --loglevel=info")) ;; You now run the worker by executing our program with the worker argument:
    (shell-command celery-command)
    ;; end of celery-tasks-info
    )


(defun shell-dir (name dir)
  (interactive "sShell name: \nDDirectory: ")
  (let ((default-directory dir))
    (shell name)))

(global-set-key (kbd "<f5>") 'shell-dir)

(require 'jdee)

(provide 'djzhang-python)

;;; djzhang-python.el ends here
