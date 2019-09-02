;;;; bbq.asd

(defsystem #:bbq
  :version "0.1.0"
  :description "Music player"
  :author "Abhinav Tushar <lepisma@fastmail.com>"
  :license "GPLv3"
  :depends-on (#:alexandria
               #:anaphora
               #:bordeaux-threads
               #:cffi
               #:clack
               #:cl-arrows
               #:cl-cut
               #:cl-interpol
               #:cl-json
               #:cl-ppcre
               #:cl-progress-bar
               #:cl-strings
               #:cl-yaml
               #:dexador
               #:inferior-shell
               #:lastfm
               #:lquery
               #:ningle
               #:plump
               #:serapeum
               #:sqlite
               #:trivia)
  :components
  ((:file "package")
   (:module "src"
    :depends-on ("package")
    :serial t
    :components
    ((:file "config")
     (:module "utils"
      :serial t
      :components ((:file "general")
                   (:file "mpv")
                   (:file "yt")))
     (:file "db")
     (:file "log")
     (:file "query")
     (:module "reco"
      :serial t
      :components ((:file "feats")
                   (:file "model")))
     (:file "hooks")
     (:file "player")
     (:file "server")
     (:file "client")
     (:file "import")
     (:file "cli")))))
