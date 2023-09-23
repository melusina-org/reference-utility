;;;; development.lisp — Development System for Reference Utility

;;;; Reference Utility (https://github.com/melusina-org/reference-utility)
;;;; This file is part of Reference Utility.
;;;;
;;;; Copyright © 2023 Michaël Le Barbier
;;;; All rights reserved.

;;;; This file must be used under the terms of the MIT License.
;;;; This source file is licensed as described in the file LICENSE, which
;;;; you should have received as part of this distribution. The terms
;;;; are also available at https://opensource.org/licenses/MIT

(defpackage #:org.melusina.reference-utility/development
  (:use #:common-lisp)
  (:local-nicknames
   (#:atelier #:org.melusina.atelier))
  (:export
   #:lint
   #+quicklisp
   #:reload))

(in-package #:org.melusina.reference-utility/development)

(defun system-relative-pathname (&rest pathnames)
  (labels ((system-source-directory ()
	     (asdf:system-source-directory #.(string-downcase (package-name *package*))))
	   (merge-one (pathname)
	     (merge-pathnames pathname (system-source-directory))))
    (mapcar #'merge-one pathnames)))

(defparameter *parameter-bindings*
  '((:copyright-holder . "Michaël Le Barbier")
    (:copyright-year . "2023")
    (:project-filename . "org.melusina.reference-utility")
    (:project-name . "Reference Utility")
    (:project-description . "A reference implementation of a basic Lisp utility")
    (:project-long-description . "The reference implementation displays how to write, build and distribute a command line utility with Common Lisp.")
    (:homepage . "https://github.com/melusina-org/reference-utility")
    (:license . :MIT)))

(defun lint ()
  (let ((atelier:*parameter-bindings* *parameter-bindings*))
    (atelier:lint
     (system-relative-pathname
      #p"org.melusina.reference-utility.asd"
      #p"development"
      #p"doc"
      #p"src"
      #p"testsuite"
      #p"libexec/lisp/development.lisp"))))

#+quicklisp
(defun reload ()
  (ql:quickload '("org.melusina.reference-utility"
		  "org.melusina.reference-utility/testsuite"
		  "org.melusina.reference-utility/development")))


;;;;
;;;; Command Stock
;;;;

#+nil
(org.melusina.reference-utility/development:reload)

;;;; End of file `development.lisp'
