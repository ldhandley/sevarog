#lang codespells

(require sevarog/mod-info)

(define-classic-rune (sevarog)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (with-scale 2 (spawn-mod-blueprint pak-folder mod-name "Sevarog")))

(define-classic-rune-lang my-mod-lang #:eval-from main.rkt
  (sevarog))

(module+ main
  (codespells-workspace ;TODO: Change this to your local workspace if different
   (build-path (current-directory) ".." ".."))
  
  (once-upon-a-time
   #:world (arena-world)
   #:aether (demo-aether
             #:lang (my-mod-lang #:with-paren-runes? #t))))


