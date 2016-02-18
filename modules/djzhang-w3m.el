(defun w3m-yt-view ()
  "View a YouTube link with youtube-dl and mplayer."
  (interactive)
  (let ((url (or (w3m-anchor) (w3m-image))))
    (string-match "[^v]*v.\\([^&]*\\)" url)
    (let* ((vid (match-string 1 url))
           (out (format "%s/%s.mp4" w3m-default-save-directory vid)))
      (call-process "youtube-dl" nil nil nil "-U" "-q" "-c" "-o" out url)
      (start-process "mplayer" nil "mplayer" "-quiet" out))))

(provide 'djzhang-w3m)
