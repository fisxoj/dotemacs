(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(setq use-package-always-ensure t)

(setq custom-file (locate-user-emacs-file "custom.el"))

(use-package org
  :ensure org-plus-contrib
  :bind-keymap (("C-c C-w" . f/fast-copy))
  :config
  ;; https://emacs.stackexchange.com/questions/63037/fast-way-to-copy-a-link-at-point-in-org-mode
  (defun f/link-fast-copy ()
    (interactive)
    (let* ((context (org-element-context))
           (type (org-element-type context)))
      (when (eq type 'link)
        (kill-new (org-element-property :raw-link context))))))

(org-babel-load-file (locate-user-emacs-file "Matt.org"))
