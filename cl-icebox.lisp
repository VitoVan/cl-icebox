(in-package #:cl-icebox)

(defparameter *hacking* nil)

(setf *wish-args* '("-name" "Ice Box"))

(defun init-window (&optional (width  220) (height 200))
  (mapcar
   (lambda (func) (funcall func *tk* width height))
   '(maxsize minsize)))

(defun icebox ()
  (if *hacking*
      (setf *wish-pathname* "./bin/tclkit-gui")
      (setf
       *wish-pathname*
       (or
        (uiop:getenv "WISH_PATHNAME")
        #+(or linux darwin)
        (namestring
         (merge-pathnames "tclkit-gui" (car (unix-opts:argv))))
        "tclkit-gui")))
  (with-ltk ()
    (init-window)
    (let ((b (make-instance 'button
                            :master nil
                            :text "Press Me"
                            :command (lambda ()
                                       (message-box
                                        (format nil "Hey, what's up? ~%~%Why did you press me?")
                                        "Ice Box" "ok" "info" :parent *tk*)))))
      (pack b :pady 80))))
