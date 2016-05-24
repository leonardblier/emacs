;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")
;; path to where plugins are kept
(setq plugin-path "~/.emacs.d/el-get/")

;; Add packages lists


;; define various custom functions
(require 'custom-functions)

;; configure general settings
(require 'general-settings)

;; install dependencies with el-get
(require 'el-get-settings)

(setq package-archives 
      '( 
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("elpy" . "http://jorgenschaefer.github.io/packages/")
        )
      )

(package-initialize) ;; init elpa packages

;---------------;
;;; Utilities ;;;
;---------------;

;; Git
;; (include-plugin "magit")
;; (require 'magit)

;; Popup
(include-elget-plugin "popup")
(require 'popup)

;; ;; Websocket
;; (include-plugin "websocket")
;; (require 'websocket)

;; yasnippet
(require 'yasnippet-settings)

;; ;; Auto complete
;; (require 'auto-complete-settings)

;; ;; Camelcase functions
;; (require 'camelcase-settings)

;; Helm
(require 'helm-settings)


;-----------;
;;; Modes ;;;
;-----------;

;; Ido mode
(require 'ido)
(ido-mode 1)

;; Markdown mode
(require 'markdown-settings)

;; Python mode 
(require 'python-settings)

;; LaTeX and Auctex
(require 'latex-settings)


;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)
