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

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(add-to-list 'default-frame-alist
             '(font . "Source Code Pro-16"))

(use-package powerline
	:init (powerline-default-theme))

(use-package evil
	:init (evil-mode t)
	:config	
	(progn 
	    (show-paren-mode)
	    (global-display-line-numbers-mode)
	    (use-package evil-leader
		    :init (global-evil-leader-mode)
		    :config	
		    (progn	
			(evil-leader/set-leader "SPC")
			(evil-leader/set-key
			    "j" 'windmove-down
			    "k" 'windmove-up
			    "h" 'windmove-left
			    "l" 'windmove-right

			    "J" (lambda () (interactive) (split-window-vertically) (windmove-down))
			    "K" (lambda () (interactive) (split-window-vertically))
			    "H" (lambda () (interactive) (split-window-horizontally))
			    "L" (lambda () (interactive) (split-window-horizontally) (windmove-right))

			    "q" 'delete-window)))))

(use-package projectile
    :init (projectile-mode 1)
    :config
    (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
    (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
   )
