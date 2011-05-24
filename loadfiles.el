;;all projects are in each folder and each setup.el most exist
;;get projects list
(progn
  (setq projects (file-name-all-completions "" "~/elisps"))
  (setq files (directory-files "~/elisps"))
  
  (setq projects (remove "./" projects))
  (setq projects (remove "../" projects))
  (setq projects (remove ".git/" projects))
  (setq projects (remove "" projects))

  (while files
    (setq projects (remove (car files) projects))
    (setq files (cdr files))
    )
  )

;;add load-path
;;load setup.el
(while projects
  (setq path_project (concat "~/elisps/" (car projects)))
  (setq load-path
	(append
	 (list
	  (expand-file-name path_project)
	  )
	 load-path))
  (load (concat path_project "setup.el"))
  ;;next
  (setq projects (cdr projects))
  )
