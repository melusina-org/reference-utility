;;;; setup.lisp — Project setup for Reference Utility

;;;; Reference Utility (https://github.com/melusina-org/reference-utility)
;;;; This file is part of Reference Utility.
;;;;
;;;; Copyright © 2023 Michaël Le Barbier
;;;; All rights reserved.

;;;; This file must be used under the terms of the MIT License.
;;;; This source file is licensed as described in the file LICENSE, which
;;;; you should have received as part of this distribution. The terms
;;;; are also available at https://opensource.org/licenses/MIT

(in-package #:cl-user)

;;;
;;; Atelier
;;;

(ql:quickload "org.melusina.atelier" :silent t)

(setf org.melusina.atelier:*parameter-bindings*
      '((:copyright-holder . "Michaël Le Barbier")
        (:copyright-year . "2023")
	(:project-filename . "org.melusina.reference-utility")
        (:project-name . "Reference Utility")
	(:project-description . "A reference implementation of a basic Lisp utility")
        (:project-long-description . "The reference implementation displays how to write, build and distribute a command line utility with Common Lisp.")
        (:homepage . "https://github.com/melusina-org/reference-utility")
        (:license . :MIT)))

;;;; End of file `setup.lisp'
