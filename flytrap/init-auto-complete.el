;; init-auto-complete.el

(require 'functions)
(require 'auto-complete-config)
(global-auto-complete-mode t)

;; custom dict
(add-to-list 'ac-dictionary-directories
             (expand-file-name "flytrap/custom-dicts" user-emacs-directory))

;; first indent, then complate
(setq tab-always-indent 'complete)

;; close auto-complete
;;(setq-default ac-expand-on-auto-complete nil)
;;(setq-default ac-auto-start nil)

;; load yasnippet and set ac-sources
(defun c-sources-path-init ()
  "c-mode"
  (after-load 'init-yasnippet
	      (set-default 'ac-sources
			   '(ac-source-dictionary
			     ac-source-words-in-buffer
			     ac-source-words-in-same-mode-buffers
			     ac-source-words-in-all-buffer
			     ac-source-functions
			     ac-source-yasnippet))))


(provide 'init-auto-complete)
