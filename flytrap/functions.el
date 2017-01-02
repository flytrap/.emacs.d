;; flytrap define functions file

(defun load-path-package (package-path)
  "load plugins files"
  (dolist (f (directory-files package-path))
    (let ((name (expand-file-name f package-path)))
      (when (and (file-directory-p name)
		 (not (equal f "."))
		 (not (equal f "..")))
        (add-to-list 'load-path name)))))

;; after-load
(defmacro after-load (feature &rest body)
  "After FEATURE is loaded, evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,feature
     '(progn ,@body)))

(provide 'functions)
