;; @file asl_org.el
;; @comment customizing org-mode

;; ;;; TODO: find out why it is necessary here (and not in asl/f8-layers-layers)
(require 'org)

;; ;;; <asl/org aliases>
(defalias 'asl/org-next                          'org-next-visible-heading)
(defalias 'asl/org-previous                      'org-previous-visible-heading)
(defalias 'asl/org-forward                       'org-forward-heading-same-level)
(defalias 'asl/org-backward                      'org-backward-heading-same-level)
(defalias 'asl/org-jump                          'org-goto)
(defalias 'asl/org-insert-heading-r-c            'org-insert-heading-respect-content)
(defalias 'asl/org-section-up                    'org-metaup)
(defalias 'asl/org-section-down                  'org-metadown)
(defalias 'asl/org-open-link                     'org-open-at-point)
;; ;;; </asl/org aliases>
;; ;;; <asl/org functions>
(defun asl/org-insert-heading-below()
  (interactive)
  (end-of-line)
  (org-meta-return))
(defun asl/add-item()
  (interactive)
  (org-meta-return)
  (org-meta-return))
;; ;;; </asl/org functions>



;;;;;;;;;;;;;;;;;;;Using the "Xah syntax" for Emacs key bindings:;;;;;;;
;;;;;; http://xahlee.info/emacs/pemacs/keyboard_shortcuts_examples.html ;;;;;;;;
(define-key org-mode-map (kbd "<f8>")                 nil)
(define-key org-mode-map (kbd "<f8> <up>")           'asl/org-previous)
(define-key org-mode-map (kbd "<f8> <next>")         'asl/org-forward)
(define-key org-mode-map (kbd "<f8> <down>")         'asl/org-next )
(define-key org-mode-map (kbd "<f8> <prior>")        'asl/org-backward)
(define-key org-mode-map (kbd "<f8> <f8>")           'asl/org-insert-heading-r-c ) 
(define-key org-mode-map (kbd "<f8> RET")            'asl/org-insert-heading-below)
(define-key org-mode-map (kbd "<f8> <S-up>")         'asl/org-section-up)
(define-key org-mode-map (kbd "<f8> <S-down>")       'asl/org-section-down)
(define-key org-mode-map (kbd "<f8> <o>")            'asl/org-open-link)
(define-key org-mode-map (kbd "<f8> <S-RET>")        'asl/add-item)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;; </asl/org keys>

;;  ;;;
(provide 'asl_org)
(message "End of %s" (current-buffer))
;; ;;; end of asl_org.el

