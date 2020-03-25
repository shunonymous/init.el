;;; undo-tree
(use-package undo-tree
  :init (global-undo-tree-mode t)
  :bind
  ("C-x u" . undo-tree-visualize)
  ("C-/" . undo-tree-undo)
  ("C-S-/" . undo-tree-redo))

;;; Store recently opened files
(recentf-mode 1)

;;; Set Japanese IME
(use-package mozc
  :custom (default-input-method "japanese-mozc"))

(use-package multiple-cursors)

;; magit
(use-package magit
  :bind ("C-x g" . magit-status)
  :commands (magit-init))

;;; git-gutter
(use-package git-gutter
  :config (global-git-gutter-mode t))