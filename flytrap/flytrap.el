;; flytrap init file
;; require functions

(require 'functions)
(require 'projectile)

;; define var
(defvar plugin-path (expand-file-name "plugins" user-emacs-directory))

;; add load path
(load-path-package plugin-path)

;; init functions
(defun init-ecb-directory ()
  "custom var to ecb"
  (interactive)
  (require 'cl)
  (require 'cl-lib)
  (require 'ecb)
  (setq ecb-windows-width 0.25)
  (setq ecb-tip-of-the-day nil)
  (ecb-activate)
  (define-key ecb-mode-map (kbd "<f12>") 'ecb-deactivate)  
  )

(defun python-add-breakpoint ()
  "Add a break point"
  (interactive)
  (setq pdb-string "import pdb; pdb.set_trace()")
  (newline-and-indent)
  (insert pdb-string)
  (highlight-lines-matching-regexp (concat "^[ ]*" pdb_string))
  )
  

(defun init-python-ide ()
  "python ide setting"
  (interactive)
  (require 'find-file-in-project)
  (require 'elpy)
  (setq elpy-rpc-backend "jedi")
  (if (not elpy-project-root)
      (elpy-set-project-root default-directory))
  (elpy-enable)
  (when (and (derived-mode-p 'python-mode)
	     (not elpy-mode))
    (elpy-mode))
;  (setq python-shell-interpreter "python2")
  (setq python-shell-native-complete nil)
  
  (define-key elpy-mode-map (kbd "C-M-l") 'elpy-autopep8-fix-code)  ; format code

  (define-key python-mode-map (kbd "C-c C-b") 'python-add-breakpoint)
  
  (define-key elpy-mode-map (kbd "<C-f12>") 'elpy-disable)
  )

(defun flytrap-java-env ()
  "custom var to jdee"
  (require 'jdee)
  )

(defun flytrap-comment-or-uncomment-region (beg end &optional arg)
  (interactive (if (use-region-p)
		   (progn
		     (message (region-beginning))
		     (list (region-beginning) (region-end) nil))
                 (list (line-beginning-position)
                       (line-beginning-position 2))))
  (comment-or-uncomment-region beg end arg))

;; add hook
(add-hook 'python-mode-hook (lambda()
			      (hs-minor-mode)
			      (setq-default indent-tabs-mode t)
			      (setq-default tab-width 4)
			      (setq-default py-indent-tabs-mode t)
			      (setq-default py-indent-tabs-mode t)))
;; define key map
(global-set-key (kbd "<f12>") 'init-ecb-directory)
(global-set-key (kbd "<C-f12>") 'init-python-ide)
(global-set-key (kbd "M-*") 'pop-tag-mark)  ; back

;; other config
(require 'init-yasnippet)
(require 'init-auto-complete)
(require 'psvn)

(provide 'flytrap)
