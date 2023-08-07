(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/Bureau/a.org"))
 '(package-selected-packages '(evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(evil-mode 1)
(global-display-line-numbers-mode)
(setq display-line-numbers 'relative) 
(set-frame-font "Inconsolata 15" nil t)
(custom-set-variables '(speedbar-show-unknown-files t))
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-xh" 'help-command)
