(load "scm-tests/skim-unit.scm")

(assert-equal (lambda () (string? "string")) #t)
(assert-equal (lambda () (vector? '#(1 2 3))) #t)

(assert-equal (lambda () (string=? "string" "string")) #t)
(assert-equal (lambda () (string=? "string" "String")) #f)
(assert-equal (lambda () (string-ci=? "string" "String")) #t)
(assert-equal (lambda () (string>? "abcd" "abc")) #t)
(assert-equal (lambda () (string>? "ABCD" "abc")) #f)
(assert-equal (lambda () (string-ci>? "ABCD" "abc")) #t)

(unit-test-handler-results)
(unit-test-all-passed)
