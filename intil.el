; packages to be automatically installed 
(setq package-list '(org ))

;;This is required by melpa im not really sure 
(require 'package)

;; repostioryes contaning the packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))

;; activate all the packages
(package-initialize)

;; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))



(setq initial-scratch-message "
;;      Petr Quinns Customized Emacs system 
;;      guarded by Willy Coyote  



    ....
         ,''. :   __
             \|_.'  `:       _.----._//_
            .'  .'.`'-._   .'  _/ -._ \)-.----O
           '._.'.'      '--''-'._   '--..--'-`
            .'.'___    /`'---'. / ,-'`
         _<__.-._))../ /'----'/.'_____:'.
   \_    :            \ ]              :  '.
     \___:             \\              :    '.
         :              \\__           :    .'
         :_______________|__]__________:  .'
                    .' __ '.           :.'
                  .' .'  '. '.
                .' .'      '. '.
              .' .'          '. '.
           _.' .'______________'. '._
          [_0______________________0_]


_______________________________________________
		  Keybinds 


Movement Buffers
* C-x [right] Next Buffer 
* C-x [left] Previous Buffer 

Buffers Managerment 
* C-x b buffer RET Select or create buffeer named RET 
* C-x C-b List all Buffers 
* C-x k buffer RET Kill buffer named RET 

Window Managerment 
* C-x 2 splits the selected windows into two windows that are one above the others 
* C-x 3 spilts the selected window into two windows that are side by side 
* C-x o choose a windows 
* C-M-S-v chooses next window downward 
* C-x 0 Delete window
* C-x 1 Delete other window and keep the one selected 

Terminal Emulation
* M-! cmd RET Single Line Command 
* M-x shell Creates a Terminal within emacs using a buffer 
* M-p like the up arrow key 
* M-n like the down arrow key

File Navigation 
* C-x C-f find file
* C-x C-w write file 

")

;; Setting emacs to our custom theme dracula 
;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;(load-theme 'dracula t)

;; Removing bloat from startup 
(menu-bar-mode -1) 
(tool-bar-mode -1) 
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)


;; Enable y/n answers
(defalias 'yes-or-no-p 'y-or-n-p)

 
;; Ading org keybindings
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)


;; getting rid of that god awful Custom stuff from the customize interface by putting it inside its own file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)


