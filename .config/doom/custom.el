(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(map! :n "C-d" #'my/scroll-down-and-center)
(map! :n "C-u" #'my/scroll-up-and-center)

(defun my/scroll-down-and-center()
  "Scroll down and center the screen."
  (interactive)
  (evil-scroll-down nil)
  (recenter))

(defun my/scroll-up-and-center()
  "Scroll up and center the screen."
  (interactive)
  (evil-scroll-up nil)
  (recenter))
