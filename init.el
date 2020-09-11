;; https://melpa.org/#/getting-started
(require 'package)

(setq package-archives
      '(("org" . "https://orgmode.org/elpa/")
	("gnu" . "https://elpa.gnu.org/packages/")
	("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(setq my-package-list '(use-package))

(dolist (package my-package-list)
  (unless (package-installed-p package)
    (package-install package)))

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))
