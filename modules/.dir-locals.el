((nil . ((eval . (progn
                   (require 'projectile)
                   (setq company-clang-arguments (delete-dups (append
                                                               company-clang-arguments
                                                               (list (concat "-I" (projectile-project-root) "src"))))))))))
