;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(require 'package)
;(add-to-list 'package-archives
;             '("elpy" . "http://jorgenschaefer.github.io/packages/"))
;(package-initialize)

;; global custom
(global-linum-mode t)
(column-number-mode t)
(setq linum-format "%4d\u2502")
(setq tab-width 4)

(fset 'yes-or-no-p 'y-or-n-p)
(auto-image-file-mode t)
(setq auto-save-default nil)
(setq x-select-enable-clipboard t)

;; load themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)

;;define the base path
(defvar config-path "~/.emacs.d/flytrap")
(add-to-list 'load-path config-path)
(require 'flytrap)
(flytrap-directory)
(flytrap-python-env)
; (require 'elpy)
; (require 'yasnippet)
; (yas-global-mode 1)
(require 'auto-complete-config)
(ac-config-default)
;(setq ecb-use-speedbar-instead-native-tree-buffer t)
;(setq ecb-auto-activate t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
  
 '(ecb-options-version "2.50")
 '(ecb-source-path (quote (("/" "/") "~/Documents/code/git/cnblogs")))
; '(package-selected-packages (quote (elpy)))
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
