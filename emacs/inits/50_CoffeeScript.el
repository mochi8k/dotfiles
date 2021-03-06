(when (require 'coffee-mode)
  (add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))

  (defun coffee-custom ()
    "coffee-mode-hook"
    (and (set (make-local-variable 'tab-width) 2)
         (set (make-local-variable 'coffee-tab-width) 2))
    )

  (add-hook 'coffee-mode-hook
            '(lambda() (coffee-custom)))

)
