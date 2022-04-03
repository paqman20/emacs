;; Setting emacs to our custom theme dracula 
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

;; Removing bloat from startup 
(menu-bar-mode -1) 
(tool-bar-mode -1) 
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)
