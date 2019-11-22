(require 'org)

(setq vc-follow-symlinks t)

(find-file (concat user-emacs-directory "init.org"))
(org-babel-tangle)
(rename-file "init.el" (expand-file-name "init.el" user-emacs-directory) t)
(load-file (concat user-emacs-directory "init.el"))
(byte-compile-file (concat user-emacs-directory "init.el"))
