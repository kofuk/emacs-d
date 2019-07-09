;;; init-install-packages.el --- Install packages I selected  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(setq init-package:index-refreshed nil)

(defun init-package:install-package (pkg)
  (unless (package-installed-p pkg)
    (progn
      (unless init-package:index-refreshed
        (package-refresh-contents)
        (setq init-package:index-refreshed t))
      (package-install pkg))))


(init-package:install-package 'auto-complete)
(init-package:install-package 'clang-format)
(init-package:install-package 'company-go)
(init-package:install-package 'company-lsp)
(init-package:install-package 'dracula-theme)
(init-package:install-package 'ddskk)
(init-package:install-package 'flycheck)
(init-package:install-package 'git-gutter)
(init-package:install-package 'go-mode)
(init-package:install-package 'highlight-indent-guides)
(init-package:install-package 'htmlize)
(init-package:install-package 'lsp-mode)
(init-package:install-package 'lsp-ui)
(init-package:install-package 'smartparens)
(init-package:install-package 'undo-tree)
(init-package:install-package 'use-package)
(init-package:install-package 'web-mode)


(provide 'init-install-packages)
;;; init-install-packages.el ends here