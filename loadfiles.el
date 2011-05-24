;;load path
(setq load-path
      (append
       (list
	(expand-file-name "~/elisps/ruby_mode")
	)
       load-path))

;;load
(load "~/elisps/ruby_mode/set_ruby_mode.el")
