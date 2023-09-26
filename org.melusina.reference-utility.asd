;;;; org.melusina.reference-utility.asd — System definition for Reference Utility

;;;; Reference Utility (https://github.com/melusina-org/reference-utility)
;;;; This file is part of Reference Utility.
;;;;
;;;; Copyright © 2023 Michaël Le Barbier
;;;; All rights reserved.

;;;; This file must be used under the terms of the MIT License.
;;;; This source file is licensed as described in the file LICENSE, which
;;;; you should have received as part of this distribution. The terms
;;;; are also available at https://opensource.org/licenses/MIT

(asdf:defsystem #:org.melusina.reference-utility
  :description "A reference implementation of a basic Lisp utility"
  :author "Michaël Le Barbier"
  :license "MIT License"
  :depends-on (#:alexandria)
  :components
  ((:module "src"
    :components ((:file "package")
                 (:file "utilities")
		 (:file "entry-point")))))

(asdf:defsystem #:org.melusina.reference-utility/testsuite
  :description "A reference implementation of a basic Lisp utility"
  :author "Michaël Le Barbier"
  :license "MIT License"
  :depends-on (#:alexandria
	       #:org.melusina.confidence
	       #:org.melusina.reference-utility)
  :components
  ((:module "testsuite"
    :components ((:file "package")
		 (:file "utilities")
		 (:file "entry-point")))))

(asdf:defsystem #:org.melusina.reference-utility/development
  :description "Development tools for Reference Utility"
  :author "Michaël Le Barbier"
  :license "MIT License"
  :depends-on (#:alexandria
	       #:org.melusina.atelier)
  :components
  ((:module "libexec/lisp"
    :components ((:file "development")))))


(asdf:defsystem #:org.melusina.reference-utility/executable
  :description "Build executable for Reference Utility"
  :author "Michaël Le Barbier"
  :license "MIT License"
  :depends-on (#:org.melusina.reference-utility)
  :build-operation program-op
  :build-pathname "reference-utility-command"
  :entry-point "org.melusina.reference-utility:entry-point")

;;;; End of file `org.melusina.reference-utility.asd'
