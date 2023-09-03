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
;;(setq display-line-numbers 'relative) 
(set-frame-font "Fira code 15" nil t)

(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-xh" 'help-command)
(setq display-line-numbers-type 'relative)
(define-key evil-normal-state-map (kbd "C-r") 'undo-redo)


;;These lines enable various Vim-like keybindings, such as using Ctrl-u and
;; Ctrl-d to scroll up and down, and disabling Ctrl-i to jump forward in the
;; buffer.
(setq evil-want-C-u-scroll t)
(setq evil-want-C-d-scroll t)
(setq evil-want-C-i-jump nil)


