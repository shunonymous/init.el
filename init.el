;;; shunonymous's emacs init.el

;;; Enable MELPA repository
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(init-loader-load)

;;; If C++ mode, set indent mode as stroustrup
(add-hook 'c++-mode-hook
	  '(lambda()
	     (c-set-style "stroustrup")))

;;; Fix helm's f*ckin default behavior
(require 'helm)
(setq helm-use-frame-when-more-than-two-windows nil)

;;; Disable menu-bar and tool-bar (when GUI)
(tool-bar-mode 0)
(menu-bar-mode 0)

;;; Display time
(setq display-time-24hr-format t)
(display-time-mode t)

;;; smartparens
(require 'smartparens-config)
(smartparens-global-mode 1)

;;; powerline
(require 'powerline)
(powerline-default-theme)

(set-face-attribute 'mode-line-inactive nil
		    :foreground "gray35")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm powerline smartparens auto-async-byte-compile lispxmp open-junk-file flycheck-lilypond nhexl-mode markdown-mode markdown-mode+ markdown-preview-mode midi-kbd flycheck-rtags flycheck-irony irony-eldoc rtags company-shell company company-c-headers company-emoji company-irony company-irony-c-headers flycheck-popup-tip flycheck flycheck-clang-analyzer cpputils-cmake cmake-font-lock cmake-ide cmake-mode cmake-project sudo-edit cherry-blossom-theme magit mozc mozc-im mozc-popup mozc-temp pkgbuild-mode projectile rainbow-delimiters undo-tree volatile-highlights init-loader))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
