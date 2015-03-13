(defun generate-getter ()
  (interactive)
  (setq name (member-name))
  (end-of-line)
  (insert (concat "\npublic get" name "() {\n"))
  (insert (concat "return " name ";"))
  (insert "\n}")
  (indent-region 1 (point-max)))

(defun member-name ()
  (interactive)
  (setq name (thing-at-point 'word))
  (message name))

(add-hook 'java-mode 'generate-getter)

