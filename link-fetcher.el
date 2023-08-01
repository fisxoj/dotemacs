(require 'request)


(defun fisxoj/link-with-title (url)
  (interactive "Murl: ")
  (let ((title))
    (request url
      :success (cl-function (lambda (&key data &allow-other-keys)
                              (when (string-match "<title>\\([^<]+\\)</title>" data)
                                (setq title (match-string 1 data)))))
      :sync t)
    (unless title
      (setf title (read-string "Couldn't find a title, enter one")))
    (setf title (with-temp-buffer
                  (save-excursion (insert title))
                  (xml-parse-string)))
    (org-insert-link nil url title)))
