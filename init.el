(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize nil)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(use-package org :ensure org-plus-contrib)
(org-babel-load-file "~/.emacs.d/Matt.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (go-mode cider flymake-rust racer rainbow-mode web-mode fill-column-indicator elpy elm-mode company paredit js2-mode ox-reveal ox-html5slide github-browse-file orgit org-bullets writegood-mode dim swiper auto-complete multiple-cursors grizzl projectile magit notmuch elfeed eshell-git-prompt use-package org-plus-contrib darkokai-theme color-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
