(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
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
 '(auth-source-save-behavior nil)
 '(company-begin-commands '(self-insert-command))
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 2)
 '(company-tooltip-align-annotations t)
 '(elfeed-feeds
   '(("http://mjg59.dreamwidth.org/data/rss" linux)
     ("http://sarah.thesharps.us/feed/" linux)
     ("http://planet.lisp.org/rss20.xml" code lisp)
     ("http://sachachua.com/blog/feed" emacs inspiration)
     ("http://nullprogram.com/feed/" emacs)
     ("http://readthiseatthat.blogspot.com/feeds/posts/default?alt=rss" books)
     ("http://slime-tips.tumblr.com/rss" emacs lisp)
     ("http://emacshorrors.com/feed" emacs)
     ("http://www.antipope.org/charlie/blog-static/atom.xml" books)
     ("http://blog.8arrow.org/rss" lisp)
     ("http://eudoxia.me/feed.xml" lisp)
     ("https://drmeister.wordpress.com/feed/" lisp)
     ("http://www.pvk.ca/atom.xml" lisp)
     ("https://mollermara.com/rss.xml" emacs)
     ("http://www.suspectsemantics.com/atom.xml" rust)
     ("http://birdlord.tumblr.com/" comics books culture)
     ("https://www.harihareswara.net/nb/nb.cgi/syndicate/sumana" linux)
     ("https://jvns.ca/atom.xml" ruby rust)
     ("http://jensimmons.com/blog.xml" web design)
     ("http://zerolib.com/feed.xml" lisp emacs)
     ("http://irreal.org/blog/?feed=rss2" emacs)))
 '(elpy-rpc-backend "jedi" t)
 '(elpy-rpc-python-command "python3")
 '(flycheck-check-syntax-automatically '(save mode-enabled))
 '(flycheck-javascript-flow-args nil)
 '(flycheck-python-flake8-executable "python3")
 '(flycheck-python-mypy-args '("--ignore-missing-imports"))
 '(flycheck-python-pycompile-executable "python3")
 '(flycheck-python-pylint-executable "python3")
 '(inferior-lisp-program "sbcl" t)
 '(inhibit-startup-message t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message ";;
")
 '(ivy-count-format "(%d/%d) ")
 '(ivy-display-style 'fancy)
 '(ivy-use-virtual-buffers t)
 '(ivy-virtual-abbreviate 'full)
 '(jiralib-url "https://themuse.atlassian.net/")
 '(org-agenda-files '("~/Documents/Notes/todo.org"))
 '(org-jira-done-states '("Fertig" "Done" "Closed" "Resolved"))
 '(package-selected-packages
   '(skewer-mode flymd string-inflection company-quickhelp lsp-ui-flycheck lsp-clients company-lsp lsp-ui lsp-mode eglot pretty-mode wgrep json-mode scala-mode docker-compose-mode restclient prettier-js company-flow rjsx-mode dockerfile-mode fish-mode company-box flycheck-flow markdown-mode go-mode cider flymake-rust racer rainbow-mode web-mode fill-column-indicator elpy elm-mode company paredit js2-mode ox-reveal ox-html5slide github-browse-file orgit org-bullets writegood-mode dim swiper auto-complete multiple-cursors grizzl projectile magit notmuch elfeed eshell-git-prompt use-package org-plus-contrib darkokai-theme color-theme))
 '(projectile-completion-system 'ivy)
 '(projectile-enable-caching nil)
 '(projectile-switch-project-action 'projectile-vc)
 '(racer-cmd "~/bin/racer")
 '(racer-rust-src-path "~/Code/rust/src")
 '(safe-local-variable-values
   '((eval progn
	   (add-to-list 'exec-path
			(concat
			 (locate-dominating-file default-directory ".dir-locals.el")
			 "node_modules/.bin/")))))
 '(web-mode-code-indent-offset 0)
 '(web-mode-css-indent-offset 4)
 '(web-mode-engines-alist '(("django" . "\\.html")) t)
 '(web-mode-markup-indent-offset 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
