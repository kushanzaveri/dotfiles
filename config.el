(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  (eval-when-compile (require 'use-package)))

(require 'use-package)
(setq 
	use-package-always-defer t
	use-package-always-ensure t)

(use-package spacemacs-theme
  :init (load-theme 'spacemacs-dark t))

(use-package evil
	:init (evil-mode t))

(use-package powerline
	:init (powerline-default-theme))

(use-package flycheck
	:init (global-flycheck-mode))
