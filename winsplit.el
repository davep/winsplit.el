;;; winsplit.el --- Simple commands for creating new windows
;; Copyright 2017 by Dave Pearson <davep@davep.org>

;; Author: Dave Pearson <davep@davep.org>
;; Version: 1.1
;; Keywords: convenience
;; URL: https://github.com/davep/winsplit.el

;; winsplit.el is free software distributed under the terms of the GNU
;; General Public Licence, version 2 or (at your option) any later version.
;; For details see the file COPYING.

;;; Commentary:
;;
;; winsplit.el provides some simple commands for creating new windows in the
;; way I like. The commands are designed to be assigned to obvious key
;; bindings.

;;; Code:

;;;###autoload
(defun winsplit-left ()
  "Create a new focused window to the left of the current window."
  (interactive)
  (split-window-horizontally))

;;;###autoload
(defun winsplit-left-load ()
  "Create a new focused window to the left of the current window.

Also prompt for a file to visit."
  (interactive)
  (winsplit-left)
  (call-interactively #'find-file))

;;;###autoload
(defun winsplit-right ()
  "Create a new focused window to the right of the current window."
  (interactive)
  (winsplit-left)
  (other-window 1))

;;;###autoload
(defun winsplit-right-load ()
  "Create a new focused window to the right of the current window..

Also prompt for a file to visit."
  (interactive)
  (winsplit-right)
  (call-interactively #'find-file))

;;;###autoload
(defun winsplit-above ()
  "Create a new focused window above the current window."
  (interactive)
  (split-window-vertically))

;;;###autoload
(defun winsplit-above-load ()
  "Create a new focused window above the current window..

Also prompt for a file to visit."
  (interactive)
  (winsplit-right)
  (call-interactively #'find-file))

;;;###autoload
(defun winsplit-below ()
  "Create a new focused window below the current window."
  (interactive)
  (winsplit-above)
  (other-window 1))

;;;###autoload
(defun winsplit-below-load ()
  "Create a new focused window below the current window..

Also prompt for a file to visit."
  (interactive)
  (winsplit-below)
  (call-interactively #'find-file))

(provide 'winsplit)

;;; winsplit.el ends here
