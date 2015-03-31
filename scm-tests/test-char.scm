(load "scm-tests/unit.scm")

(assert-equal (lambda () (char? #\a)) #t)
(assert-equal (lambda () (char? "a")) #f)

(assert-equal (lambda () (char=? #\a #\a)) #t)
(assert-equal (lambda () (char=? #\a #\b)) #f)
(assert-equal (lambda () (char-ci=? #\A #\a)) #t)
(assert-equal (lambda () (char-ci=? #\A #\b)) #f)
(assert-equal (lambda () (char>? #\b #\a)) #t)
(assert-equal (lambda () (char>? #\a #\a)) #f)
(assert-equal (lambda () (char-ci>? #\b #\A)) #t)
(assert-equal (lambda () (char-ci>? #\a #\A)) #f)

(unit-test-handler-results)
(unit-test-all-passed)
