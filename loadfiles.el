(setq projects
      `(
        "ruby_mode" 
	"haskell_mode"
        )
      )

(while projects
  (setq path_project (concat "~/elisps/" (car projects)))
  ;;add load-path
  (setq load-path
	(append
	 (list
	  (expand-file-name path_project)
	  )
	 load-path))
  ;;load setup.el
  (load (concat (concat path_project "/") "setup.el"))
  ;;next
  (setq projects (cdr projects))
  )
