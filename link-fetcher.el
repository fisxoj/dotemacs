(require 'request)


(defun fisxoj/link-with-title (url)
  (interactive "Murl: ")
  (let ((title))
    (request url
      :success (cl-function (lambda (&key data &allow-other-keys)
                              (when (string-match "<title>\\([^<]+\\)</title>" data)
                                (setq title (match-string 1 data)))))
      :timeout 3
      :sync t)
    (setf title (if title
                    (with-temp-buffer
                      (save-excursion (insert title))
                      ;; unescape xml entities like &gt;
                      (xml-parse-string))
                  (read-string "Couldn't find a title, enter one: ")))

    (org-insert-link nil url title)))
