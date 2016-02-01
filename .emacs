; Emacs Configuration File (~/.emacs)


; (c) Mohamad Fadavi
;
; .-github--.   .-----website-----.
; |         |   |                 |
; F A D A V I @ F A D A V I . N E T
; |           |           |       |
; |           '-telegram--'       |
; '---email-----------------------'


;- SECTIONS:
;  (1) GENERAL
;  (2) JAVASCRIPT
;  (3) PYTHON


;- TO ENABLE ALL FEATURES:
;
;  1) Install tern (`sudo` maybe required):
;     $ npm install -g tern
;
;  2) Install these pip packages (`sudo` maybe required):
;     $ pip install jedi flake8 importmagic autopep8 yapf
;  
;  3) Install powerline-compatible fonts:
;     $ git clone https://github.com/powerline/fonts.git
;     $ fonts/install.sh
;  
;  4) Backup your .emacs file:
;     $ cp ~/.emacs ~/.emacs.backup
;
;  5) Copy this file to ~/.emacs
;     $ cp /path/to/this/file/.emacs ~/.emacs
;
;  6) Open Emacs. You will see some errors/warnings.. Ignore them!
;
;  7) M-x package-install <RET> powerline <RET>
;  8) M-x package-install <RET> speedbar <RET>
;  9) M-x package-install <RET> sr-speedbar <RET>
; 10) M-x package-install <RET> js2-mode <RET>
; 11) M-x package-install <RET> tern <RET>
; 12) M-x package-install <RET> elpy <RET>
;
; 13) Restart Emacs
; 14) Enjoy... ;)

;================================================================;
;========================= (1) GENERAL ==========================;
; Repositories:
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.org/packages/")
  '("marmalade" . "http://marmalade-repo.org/packages/")
)
(package-initialize)

; Y or N instead of YES or NO
(fset 'yes-or-no-p 'y-or-n-p)

; Disable Menu Bar
(menu-bar-mode -1)

; Disable Tool Bar
(tool-bar-mode -1)

; Disable Scroll Bar
(scroll-bar-mode -1)

; Disable Splash Screen
(setq inhibit-splash-screen t)

; Disable Startup Message
(setq inhibit-startup-message t)

; Auto Pair Braces
(electric-pair-mode 1)

; Window Title
(setq frame-title-format "Emacs")

; Auto Complete
(global-auto-complete-mode t)

; Line Number
(global-linum-mode t)
(setq linum-format "%3d")

; Highlight Current Line
(global-hl-line-mode t)

; Powerline
; !! REQUIRES: powerline
(powerline-default-theme)


;----------------------- Speedbar -----------------------;
; !! REQUIRES: speedbar, sr-speedbar

(custom-set-variables
  '(speedbar-hide-button-brackets-flag t)
  '(speedbar-show-unknown-files t)
  '(speedbar-smart-directory-expand-flag t)
  '(speedbar-use-images nil)
  '(sr-speedbar-right-side nil)
  '(sr-speedbar-auto-refresh t)
  '(sr-speedbar-max-width 20)
  '(sr-speedbar-width-console 20)
)

; Disable Linum for Speedbar
(add-hook 'speedbar-mode-hook '(lambda () (linum-mode 0)))

; F8: Toggle Speedbar
(global-set-key [f8] 'sr-speedbar-toggle)
;--------------------------------------------------------;


;--------------- Prevent Unwanted Buffers ---------------;
; Scratch
(setq initial-scratch-message "")

; Messages
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

; Completions
(add-hook 'minibuffer-exit-hook '(lambda ()
  (if get-buffer "*Completions*"
    (kill-buffer "*Completions*")
  )
))

; Buffer list
(setq inhibit-startup-buffer-menu t)

; One window on multi-openning
(add-hook 'window-setup-hook 'delete-other-windows)
;--------------------------------------------------------;


;------------------ Global Keybindings ------------------;
; Close Current Buffer
(global-set-key (kbd "C-x C-x") 'kill-this-buffer)

; Resize Splitted Buffers
(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<down>") 'shrink-window)
(global-set-key (kbd "M-<up>") 'enlarge-window)
;--------------------------------------------------------;


;------------------------- Font -------------------------;
; First, install powerline-compatible fonts:
; $ git clone https://github.com/powerline/fonts.git
; $ fonts/install.sh

; Font Size
(defvar my:font-size "11")

; Font Name
(defvar my:font-name
  ;"Anonymice Powerline"
  ;"Arimo for Powerline"
  ;"Cousine for Powerline"
  ;"Dejavu Sans Mono for Powerline"
  ;"Droid Sans Mono Dotted for Powerline"
  ;"Droid Sans Mono for Powerline"
  ;"Droid Sans Mono Slashed for Powerline"
  ;"Fira Mono for Powerline"
  ;"Hack"
  ;"Inconsolata-dz for Powerline"
  "Inconsolata for Powerline"
  ;"Inconsolata-g for Powerline"
  ;"Literation Mono Powerline"
  ;"Meslo LG L DZ for Powerline"
  ;"Meslo LG L for Powerline"
  ;"Meslo LG M DZ for Powerline"
  ;"Meslo LG M for Powerline"
  ;"Meslo LG S DZ for Powerline"
  ;"Meslo LG S for Powerline"
  ;"monofur for Powerline"
  ;"Roboto Mono for Powerline"
  ;"Roboto Mono Light for Powerline"
  ;"Roboto Mono Medium for Powerline"
  ;"Roboto Mono Thin for Powerline"
  ;"Sauce Code Powerline"
  ;"Symbol Neu for Powerline"
  ;"Tinos for Powerline"
  ;"Ubuntu Mono derivative Powerline"
)

(set-default-font (concat my:font-name " " my:font-size))
;--------------------------------------------------------;


;------------------------ Theme -------------------------;
(load-theme
;;; Pre-installed Themes (Emacs 24; Ubuntu 15.10)
  ;'adwaita
  ;'deeper-blue
  ;'dichromacy
  ;'light-blue
  ;'manoj-dark
  ;'misterioso
  ;'tango-dark
  ;'tango
  ;'tsdh-dark
  ;'tsdh-light
  ;'wheatgrass
  ;'whiteboard
  'wombat

;;; Installable Themes
  ;'seti t
  ;'jbeans t
  ;'afternoon t
  ;'atom-dark t
  ;'dracula t
  ;'solarized-dark t
  ;'solarized-light t
  ;'solarized t
)
;--------------------------------------------------------;
;================================================================;



;================================================================;
;======================== (2) JAVASCRIPT ========================;
; !! REQUIRES: js2-mode, tern

; First, install tern from npm:
; $ npm install -g npm

; JS2-Mode
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

; Auto-complete
(add-hook 'js2-mode-hook 'ac-js2-mode)

; Highlight Level
(setq js2-highlight-level 3)

; Tern
; If Tern's emacs directory is different in your machind, change it!
(add-to-list 'load-path "/usr/local/lib/node_modules/tern/emacs")
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(autoload 'tern-mode "tern.el" nil t)
(eval-after-load 'tern '(progn
	(require 'tern-auto-complete)
  (tern-ac-setup)
))
;================================================================;



;================================================================;
;========================== (3) PYTHON ==========================;
; !! REQUIRES: elpy

; First, install these packages in pip: 
; $ pip install jedi flake8 importmagic autopep8 yapf

; Elpy Mode
(add-hook 'python-mode-hook 'elpy-mode)

; Generated by elpy: elpy-config <RET>
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elpy-rpc-backend "jedi"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((t nil))))
;================================================================;
