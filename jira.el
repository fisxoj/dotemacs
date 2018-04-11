(require 'jiralib)
(require 's)
(require 'magit)

(defun fisxoj/muse/create-branch-for-issue (issue-id start-point branch-type)
  (interactive (list (read-string "Jira Issue ID: ")
                     (read-string "Start from: " "develop")
                     (read-string "Git Flow branch type: " "feature")))

  (let* ((issue        (jiralib-get-issue issue-id))
         (summary      (cdr (cl-assoc 'summary (cdr (cl-assoc 'fields issue)))))
         (summary-slug (s-dashed-words summary)))

    (magit--with-safe-default-directory "~/Code/themuse/"
      (magit-branch-checkout start-point)
      (magit-pull-from-upstream (magit-pull-arguments))
      (magit-branch-and-checkout (concat branch-type "/" (s-upcase issue-id) "-" summary-slug)
                                 start-point))))
