;; Adding A start message 
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
")

;; Setting emacs to our custom theme dracula 
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

;; Removing bloat from startup 
(menu-bar-mode -1) 
(tool-bar-mode -1) 
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)


;; Enable y/n answers
(defalias 'yes-or-no-p 'y-or-n-p)



