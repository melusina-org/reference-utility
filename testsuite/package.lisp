;;;; package.lisp — Package for Reference Utility tests

;;;; Reference Utility (https://github.com/melusina-org/reference-utility)
;;;; This file is part of Reference Utility.
;;;;
;;;; Copyright © 2023 Michaël Le Barbier
;;;; All rights reserved.

;;;; This file must be used under the terms of the MIT License.
;;;; This source file is licensed as described in the file LICENSE, which
;;;; you should have received as part of this distribution. The terms
;;;; are also available at https://opensource.org/licenses/MIT

(defpackage #:org.melusina.reference-utility/testsuite
  (:use #:common-lisp)
  (:import-from #:org.melusina.confidence
   #:define-testcase
   #:define-assertion
   #:assert-t
   #:assert-eq
   #:assert-set-equal
   #:assert-string=
   #:assert-type))

(in-package #:org.melusina.reference-utility/testsuite)

;;;; End of file `package.lisp'
