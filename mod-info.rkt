#lang racket

(provide mod-name pak-folder main.rkt)

(require racket/runtime-path)

(define
  mod-name
  "Sevarog")

(define-runtime-path
  pak-folder
  "BuildUnreal/WindowsNoEditor/Sevarog/Content/Paks/")

(define-runtime-path
  main.rkt
  "main.rkt")


