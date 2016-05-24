#lang scheme

(define aCompletelyUselessFunctionCreatedOnlyToMakeOurLivesMiserable
  (λ (m n)
    (cond
      [(or (eq? m 0) (< m n))(myLoop m n)]
      [else (+ m n)]
      )
    )
  )

(define myLoop
  (λ (m n)
    (myLoopRecursive 0 0 n)
    )
  )

(define myLoopRecursive
  (λ (sum i n)
    (cond
      [(< i n)(myLoopRecursive (+ sum i) (+ i 1) n)]
      [else sum])
    )
  )

(aCompletelyUselessFunctionCreatedOnlyToMakeOurLivesMiserable 0 10)
(aCompletelyUselessFunctionCreatedOnlyToMakeOurLivesMiserable 10 7)