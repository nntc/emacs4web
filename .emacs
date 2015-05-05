(add-to-list 'load-path "~/.emacs.d/") ;;указываем где будут лежать файлы расширений 
(custom-set-variables '(column-number-mode t) ;;внизу будем видеть номер столбца
'(default-input-method "russian-computer") ;;ну а куда без этого 
'(display-time-mode t) ;;ну.. в принципе не надо, но симпатично 
'(tool-bar-mode nil)) ;;вот он тут точно не нужен 
(setq inhibit-startup-message t) ;;не показывать сообщение при старте 
(fset 'yes-or-no-p 'y-or-n-p) ;;не заставляйте меня печать yes целиком 
(setq default-tab-width 4) ;;подифолту 
(require 'php-mode) ;;подгружаем php режим
(require 'php-electric) ;;режим autocompletion конструкций языка 
(require 'html-helper-mode) 
(require 'html-script) 
(require 'js2-mode) 
(require 'msf-abbrev) ;;подгружаем "режим сокращений"
(setq-default abbrev-mode t) ;;ставим его подифолту
(setq save-abbrevs nil) ;;не надо записывать в дефолтный каталог наши сокращения
(setq msf-abbrev-root "~/.emacs.d/abb") ;;надо записывать их сюда
(global-set-key (kbd "C-c a") 'msf-abbrev-define-new-abbrev-this-mode) ;;(Ctrl-c a) для создания нового сокращения
(msf-abbrev-load) ;;пусть этот режим будет всегда :)
(global-set-key [?\C-z] 'shell) ;; ну… shell
(global-set-key [?\C-x ?\C-g] 'goto-line) ;; тут тоже все ясно… вроде
(global-set-key [?\C-x ?\C-b] 'ibuffer) ;; более удобный переключатель буферов
