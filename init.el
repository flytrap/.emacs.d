
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(global-linum-mode t)
(column-number-mode t)
(setq linum-format "%4d\u2502")
(setq tab-width 4)

(fset 'yes-or-no-p 'y-or-n-p)
(auto-image-file-mode t)
(setq auto-save-default nil)
;; (setq x-select-enable-clipboard t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)

;(add-to-list 'load-path "~/.emacs.d/site-lisp/jdee-2.4.1/lisp")
;(load "jde")
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/ecb/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/yasnippet")
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete")
;(load-file "~/.emacs.d/site-lisp/ecb/ecb.el")
(require 'ecb)
(require 'yasnippet)
(yas-global-mode 1)
(require 'auto-complete-config)
(ac-config-default)
;(setq ecb-use-speedbar-instead-native-tree-buffer t)
;(setq ecb-auto-activate t
;      ecb-tip-of-the-day nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes
   (quote
    (("left8"
      (ecb-directories-buffer-name 0.31543624161073824 . 0.2777777777777778)
      (ecb-sources-buffer-name 0.31543624161073824 . 0.2222222222222222)
      (ecb-methods-buffer-name 0.31543624161073824 . 0.3055555555555556)
      (ecb-history-buffer-name 0.31543624161073824 . 0.16666666666666666)))))
 '(ecb-options-version "2.50")
 '(ecb-source-path (quote (("/" "/") "~/Documents/code/git/cnblogs"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
