;------------------------;
;;; Python Programming ;;;
;------------------------;

;; -----------------------
;; python.el configuration
;; -----------------------

; from python.el
(require 'python)

(package-initialize)
(elpy-enable)
(setq elpy-rpc-backend "jedi")

(provide 'python-settings)

