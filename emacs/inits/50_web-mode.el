(when (require 'web-mode)
  (add-to-list 'auto-mode-alist '("\\.tpl$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html.erb$" . web-mode))

  (defun web-mode-hook()
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    (setq indent-tabs-mode t))
  (add-hook 'web-mode-hook 'web-mode-hook))
