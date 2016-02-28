(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "/Users/djzhang/.emacs.d/savefile/bookmarks")
 '(desktop-path (quote ("~/.emacs.d/")))
 '(ecb-compile-window-height 14)
 '(ecb-layout-name "left7")
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
 '(ecb-source-path
   (quote
    ("/Users/djzhang/.emacs.d" "/Users/djzhang/Desktop/wikipedia/apps-android-wikipedia" "/Users/djzhang/Desktop/wikipedia/wikiswift" "/Users/djzhang/Desktop/upwork-projects/IEATTA/IEATTA-APPLE-ANDROID" "/Users/djzhang/Desktop/github")))
 '(ecb-tip-of-the-day nil)
 '(ecb-tree-buffer-style (quote ascii-guides))
 '(mediawiki-debug t)
 '(mediawiki-site-alist
   (quote
    (("djzhangwiki" "http://localhost:8888/mediawiki/" "trujunzhang" "wanghao720" "" "Main Page"))))
 '(mediawiki-site-default "djzhangwiki")
 '(org-agenda-files (quote ("~/.emacs.d/LearnLisp/org-mode/tutor01.org")))
 '(safe-local-variable-values
   (quote
    ((eval progn
           (require
            (quote projectile))
           (setq company-clang-arguments
                 (delete-dups
                  (append company-clang-arguments
                          (list
                           (concat "-I"
                                   (projectile-project-root)
                                   "src"))))))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
