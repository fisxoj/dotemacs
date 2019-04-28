(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(setq use-package-always-ensure t)

(setq custom-file (locate-user-emacs-file "custom.el"))

(use-package org
  :ensure org-plus-contrib)

(org-babel-load-file (locate-user-emacs-file "Matt.org"))
