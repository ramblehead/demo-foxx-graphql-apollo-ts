;; Hey Emacs, this is -*- coding: utf-8 -*-

(set (make-local-variable 'tide-tsserver-executable)
     (concat (rh-project-get-root) "node_modules/.bin/tsserver"))

(set (make-local-variable 'flycheck-typescript-tslint-executable)
     (concat (rh-project-get-root) "node_modules/.bin/tslint"))

(let ((project-root (rh-project-get-root))
      file-rpath)
  (when project-root
    (setq file-rpath (abbreviate-file-name
                      (expand-file-name buffer-file-name project-root)))
    (cond ((string-match-p "\\.ts\\'\\|\\.tsx\\'" file-rpath)
           (rh-setup-typescript-tide))
          ((or (string-match-p "^#!.*node" (save-excursion
                                             (goto-char (point-min))
                                             (thing-at-point 'line t)))
               (string-match-p "\\.js\\'" file-rpath))
           (setq rh-js2-additional-externs
                 (append rh-js2-additional-externs
                         '("require" "module" "exports")))
           (rh-setup-javascript-tide)))))
