(set-face-attribute 'default nil :family "Hack Nerd Font" :height 200)

(setq-default mode-line-format nil)
(setq package-enable-at-startup nil)
(setq inhibit-startup-message t)
(setq visible-bell nil)

(add-to-list 'default-frame-alist '(undecorated . t))

(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
