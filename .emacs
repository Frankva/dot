(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(org-agenda-files '("~/QuickNote.org"))
 '(package-selected-packages '(evil))
 '(speedbar-show-unknown-files t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(evil-mode 1)
(global-display-line-numbers-mode)
(set-frame-font "Fira code 15" nil t)

(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-xh" 'help-command)
(setq display-line-numbers-type 'relative)
