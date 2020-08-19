(setq user-full-name "Maayan Kestenberg"
      user-mail-address "maayan10.k@gmail.com")

(setq doom-font (font-spec :family "monospace" :size 26))

(setq doom-theme 'doom-dracula)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; Use visual line mode by default (line wrapping)

(global-visual-line-mode t)

;; Add yadm functionality to magit
(require 'tramp)
(add-to-list 'tramp-methods
 '("yadm"
   (tramp-login-program "yadm")
   (tramp-login-args (("enter")))
   (tramp-login-env (("SHELL") ("/bin/sh")))
   (tramp-remote-shell "/bin/sh")
   (tramp-remote-shell-args ("-c"))))
(map! :leader "g." (cmd! (magit-status "/yadm::")))


; Key Bindings
