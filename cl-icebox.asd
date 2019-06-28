#+sbcl (sb-ext:unlock-package :sb-ext)
#+sbcl
(defmethod asdf:perform ((o asdf:image-op) (c asdf:system))
  (uiop:dump-image (asdf:output-file o c)
                   :executable t
                   #+sb-core-compression :compression
                   #+sb-core-compression 9
                   #+win32 :application-type #+win32 :gui))

(asdf:defsystem #:cl-icebox
  :description "Cross-Platform GUI framework written in Common Lisp"
  :author "Vito Van"
  :license "GPL-2.0"
  :version "1.0.0"
  :depends-on (#:ltk
               #+(or linux darwin) #:unix-opts)
  :serial t
  :components ((:file "package")
               (:file "cl-icebox"))
  :build-operation "program-op"
  :build-pathname "bin/icebox"
  :entry-point "cl-icebox:icebox")
