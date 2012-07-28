(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(initial-buffer-choice t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq fb-enable-slime nil) ;; either SLIME works well or Clojure works well

(setq column-number-mode t)
(setq visible-bell t)
(setq make-backup-files nil)
(setq exec-path (cons "/opt/local/bin" exec-path))
(setq sbcl-path "/opt/local/bin/sbcl") ; ports

(package-initialize)

;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(setq package-archives '(("ELPA" . "http://tromey.com/elpa/") 
                          ("gnu" . "http://elpa.gnu.org/packages/")
                          ("marmalade" . "http://marmalade-repo.org/packages/")))


(add-to-list 'load-path
  (expand-file-name "~/.emacs.d/tron-theme-11"))
(require 'tron-theme)

(if fb-enable-slime
  (progn 
    (setq inferior-lisp-program sbcl-path)
    (add-to-list 'load-path "~/.emacs.d/slime/")     ; from github: nablaone/slime
    (require 'slime)
    (slime-setup '(slime-fancy))))
