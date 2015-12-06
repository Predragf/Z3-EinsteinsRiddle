(declare-datatypes (T1 T2 T3 T4 T5) ((House (mk-house (position T1) (color T2) (beverage T3) (cigar T4) (pet T5)))))
(declare-const H1 (House Int Int Int Int Int))
(declare-const H2 (House Int Int Int Int Int))
(declare-const H3 (House Int Int Int Int Int))
(declare-const H4 (House Int Int Int Int Int))
(declare-const H5 (House Int Int Int Int Int))

;position Norw 1, Brit 2, Swede 3, Dane 4, German 5
(assert (> (position H1) 0))
(assert (<= (position H1) 5))

(assert (> (position H2) 0))
(assert (<= (position H2) 5))

(assert (> (position H3) 0))
(assert (<= (position H3) 5))

(assert (> (position H4) 0))
(assert (<= (position H4) 5))

(assert (> (position H5) 0))
(assert (<= (position H5) 5))

;color Red 1, Green 2, White 3, Yellow 4, Blue 5
(assert (> (color H1) 0))
(assert (<= (color H1) 5))

(assert (> (color H2) 0))
(assert (<= (color H2) 5))

(assert (> (color H3) 0))
(assert (<= (color H3) 5))

(assert (> (color H4) 0))
(assert (<= (color H4) 5))

(assert (> (color H5) 0))
(assert (<= (color H5) 5))

;beverage Tea 1, Coffee 2, Milk 3, Beer 4, Water 5
(assert (> (beverage H1) 0))
(assert (<= (beverage H1) 5))

(assert (> (beverage H2) 0))
(assert (<= (beverage H2) 5))

(assert (> (beverage H3) 0))
(assert (<= (beverage H3) 5))

(assert (> (beverage H4) 0))
(assert (<= (beverage H4) 5))

(assert (> (beverage H5) 0))
(assert (<= (beverage H5) 5))

;cigar Pall Mall 1, Dunhill 2, Blends 3, Blue Master 4, Prince 5
(assert (> (cigar H1) 0))
(assert (<= (cigar H1) 5))

(assert (> (cigar H2) 0))
(assert (<= (cigar H2) 5))

(assert (> (cigar H3) 0))
(assert (<= (cigar H3) 5))

(assert (> (cigar H4) 0))
(assert (<= (cigar H4) 5))

(assert (> (cigar H5) 0))
(assert (<= (cigar H5) 5))

;pet Dog 1, Bird 2, Cat 3, Horse 4, Fish 5
(assert (> (pet H1) 0))
(assert (<= (pet H1) 5))

(assert (> (pet H2) 0))
(assert (<= (pet H2) 5))

(assert (> (pet H3) 0))
(assert (<= (pet H3) 5))

(assert (> (pet H4) 0))
(assert (<= (pet H4) 5))

(assert (> (pet H5) 0))
(assert (<= (pet H5) 5))

;no same position
(assert (and (distinct (position H1) (position H2)) (distinct (position H1) (position H3)) (distinct (position H1) 
  (position H3)) (distinct (position H1) (position H4)) (distinct (position H1) (position H5)) (distinct 
    (position H2) (position H3)) (distinct (position H2) (position H4)) (distinct (position H2) (position H5))
    (distinct (position H3) (position H4)) (distinct (position H3) (position H5)) (distinct (position H4) (position H5))))

;no same color
(assert (and (distinct (color H1) (color H2)) (distinct (color H1) (color H3)) (distinct (color H1) 
  (color H3)) (distinct (color H1) (color H4)) (distinct (color H1) (color H5)) (distinct 
    (color H2) (color H3)) (distinct (color H2) (color H4)) (distinct (color H2) (color H5))
    (distinct (color H3) (color H4)) (distinct (color H3) (color H5)) (distinct (color H4) (color H5))))
    
;no same beverage
(assert (and (distinct (beverage H1) (beverage H2)) (distinct (beverage H1) (beverage H3)) (distinct (beverage H1) 
  (beverage H3)) (distinct (beverage H1) (beverage H4)) (distinct (beverage H1) (beverage H5)) (distinct 
    (beverage H2) (beverage H3)) (distinct (beverage H2) (beverage H4)) (distinct (beverage H2) (beverage H5))
    (distinct (beverage H3) (beverage H4)) (distinct (beverage H3) (beverage H5)) (distinct (beverage H4) (beverage H5))))
    
;no same cigar
(assert (and (distinct (cigar H1) (cigar H2)) (distinct (cigar H1) (cigar H3)) (distinct (cigar H1) 
  (cigar H3)) (distinct (cigar H1) (cigar H4)) (distinct (cigar H1) (cigar H5)) (distinct 
    (cigar H2) (cigar H3)) (distinct (cigar H2) (cigar H4)) (distinct (cigar H2) (cigar H5))
    (distinct (cigar H3) (cigar H4)) (distinct (cigar H3) (cigar H5)) (distinct (cigar H4) (cigar H5))))
    
;no same pet
(assert (and (distinct (pet H1) (pet H2)) (distinct (pet H1) (pet H3)) (distinct (pet H1) 
  (pet H3)) (distinct (pet H1) (pet H4)) (distinct (pet H1) (pet H5)) (distinct 
    (pet H2) (pet H3)) (distinct (pet H2) (pet H4)) (distinct (pet H2) (pet H5))
    (distinct (pet H3) (pet H4)) (distinct (pet H3) (pet H5)) (distinct (pet H4) (pet H5))))
    

;bound house instances with nationalities    
    
;einstein's constrains
(assert (= (color H2) 1))

(assert (= (pet H3) 1))

(assert (= (beverage H4) 1))

(assert (= (position H1) 1))

(assert (= (cigar H5) 5))

;the green house is on the left of the white one
(assert (or
(and (= (color H1) 2) (= (color H2) 3) (= (position H1) (- (position H2) 1)))
(and (= (color H1) 2) (= (color H3) 3) (= (position H1) (- (position H3) 1)))
(and (= (color H1) 2) (= (color H4) 3) (= (position H1) (- (position H4) 1)))
(and (= (color H1) 2) (= (color H5) 3) (= (position H1) (- (position H5) 1)))

(and (= (color H2) 2) (= (color H1) 3) (= (position H2) (- (position H1) 1)))
(and (= (color H2) 2) (= (color H3) 3) (= (position H2) (- (position H3) 1)))
(and (= (color H2) 2) (= (color H4) 3) (= (position H2) (- (position H4) 1)))
(and (= (color H2) 2) (= (color H5) 3) (= (position H2) (- (position H5) 1)))

(and (= (color H3) 2) (= (color H1) 3) (= (position H3) (- (position H1) 1)))
(and (= (color H3) 2) (= (color H2) 3) (= (position H3) (- (position H2) 1)))
(and (= (color H3) 2) (= (color H4) 3) (= (position H3) (- (position H4) 1)))
(and (= (color H3) 2) (= (color H5) 3) (= (position H3) (- (position H5) 1)))

(and (= (color H4) 2) (= (color H1) 3) (= (position H4) (- (position H1) 1)))
(and (= (color H4) 2) (= (color H2) 3) (= (position H4) (- (position H2) 1)))
(and (= (color H4) 2) (= (color H3) 3) (= (position H4) (- (position H3) 1)))
(and (= (color H4) 2) (= (color H5) 3) (= (position H4) (- (position H5) 1)))

(and (= (color H5) 2) (= (color H1) 3) (= (position H5) (- (position H1) 1)))
(and (= (color H5) 2) (= (color H2) 3) (= (position H5) (- (position H2) 1)))
(and (= (color H5) 2) (= (color H3) 3) (= (position H5) (- (position H3) 1)))
(and (= (color H5) 2) (= (color H4) 3) (= (position H5) (- (position H4) 1)))
)
)

;green house owner drinks coffe
(assert (=> (= (color H1) 2) (= (beverage H1) 2)))
(assert (=> (= (color H2) 2) (= (beverage H2) 2)))
(assert (=> (= (color H3) 2) (= (beverage H3) 2)))
(assert (=> (= (color H4) 2) (= (beverage H4) 2)))
(assert (=> (= (color H5) 2) (= (beverage H5) 2)))

;the person who smokes Pal Mal rares birds
(assert (=> (= (cigar H1) 1) (= (pet H1) 2)))
(assert (=> (= (cigar H2) 1) (= (pet H2) 2)))
(assert (=> (= (cigar H3) 1) (= (pet H3) 2)))
(assert (=> (= (cigar H4) 1) (= (pet H4) 2)))
(assert (=> (= (cigar H5) 1) (= (pet H5) 2)))

;yellow house smokes dunhill
(assert (=> (= (color H1) 4) (= (cigar H1) 2)))
(assert (=> (= (color H2) 4) (= (cigar H2) 2)))
(assert (=> (= (color H3) 4) (= (cigar H3) 2)))
(assert (=> (= (color H4) 4) (= (cigar H4) 2)))
(assert (=> (= (color H5) 4) (= (cigar H5) 2)))

;the house in the center drinks milk
(assert (=> (= (position H1) 3) (= (beverage H1) 3)))
(assert (=> (= (position H2) 3) (= (beverage H2) 3)))
(assert (=> (= (position H3) 3) (= (beverage H3) 3)))
(assert (=> (= (position H4) 3) (= (beverage H4) 3)))
(assert (=> (= (position H5) 3) (= (beverage H5) 3)))

;bluemaster drinks beer
(assert (=> (= (cigar H1) 4) (= (beverage H1) 4)))
(assert (=> (= (cigar H2) 4) (= (beverage H2) 4)))
(assert (=> (= (cigar H3) 4) (= (beverage H3) 4)))
(assert (=> (= (cigar H4) 4) (= (beverage H4) 4)))
(assert (=> (= (cigar H5) 4) (= (beverage H5) 4)))

;blends lives next to the one who keeps cats
(assert (or
(and (= (cigar H1) 3) (= (pet H2) 3) ( or (= (position H1) (- (position H2) 1)) (= (position H1) (+ (position H2) 1))))
(and (= (cigar H1) 3) (= (pet H3) 3) ( or (= (position H1) (- (position H3) 1)) (= (position H1) (+ (position H3) 1))))
(and (= (cigar H1) 3) (= (pet H4) 3) ( or (= (position H1) (- (position H4) 1)) (= (position H1) (+ (position H4) 1))))
(and (= (cigar H1) 3) (= (pet H5) 3) ( or (= (position H1) (- (position H5) 1)) (= (position H1) (+ (position H5) 1))))

(and (= (cigar H2) 3) (= (pet H1) 3) ( or (= (position H2) (- (position H1) 1)) (= (position H2) (+ (position H1) 1))))
(and (= (cigar H2) 3) (= (pet H3) 3) ( or (= (position H2) (- (position H3) 1)) (= (position H2) (+ (position H3) 1))))
(and (= (cigar H2) 3) (= (pet H4) 3) ( or (= (position H2) (- (position H4) 1)) (= (position H2) (+ (position H4) 1))))
(and (= (cigar H2) 3) (= (pet H5) 3) ( or (= (position H2) (- (position H5) 1)) (= (position H2) (+ (position H5) 1))))

(and (= (cigar H3) 3) (= (pet H1) 3) ( or (= (position H3) (- (position H1) 1)) (= (position H3) (+ (position H1) 1))))
(and (= (cigar H3) 3) (= (pet H2) 3) ( or (= (position H3) (- (position H2) 1)) (= (position H3) (+ (position H2) 1))))
(and (= (cigar H3) 3) (= (pet H4) 3) ( or (= (position H3) (- (position H4) 1)) (= (position H3) (+ (position H4) 1))))
(and (= (cigar H3) 3) (= (pet H5) 3) ( or (= (position H3) (- (position H5) 1)) (= (position H3) (+ (position H5) 1))))

(and (= (cigar H4) 3) (= (pet H1) 3) ( or (= (position H4) (- (position H1) 1)) (= (position H4) (+ (position H1) 1))))
(and (= (cigar H4) 3) (= (pet H2) 3) ( or (= (position H4) (- (position H2) 1)) (= (position H4) (+ (position H2) 1))))
(and (= (cigar H4) 3) (= (pet H3) 3) ( or (= (position H4) (- (position H3) 1)) (= (position H4) (+ (position H3) 1))))
(and (= (cigar H4) 3) (= (pet H5) 3) ( or (= (position H4) (- (position H5) 1)) (= (position H4) (+ (position H5) 1))))

(and (= (cigar H5) 3) (= (pet H1) 3) ( or (= (position H5) (- (position H1) 1)) (= (position H5) (+ (position H1) 1))))
(and (= (cigar H5) 3) (= (pet H1) 3) ( or (= (position H5) (- (position H2) 1)) (= (position H5) (+ (position H2) 1))))
(and (= (cigar H5) 3) (= (pet H3) 3) ( or (= (position H5) (- (position H3) 1)) (= (position H5) (+ (position H3) 1))))
(and (= (cigar H5) 3) (= (pet H4) 3) ( or (= (position H5) (- (position H4) 1)) (= (position H5) (+ (position H4) 1))))
)
)



;the man with a horse lives next to dunhil
(assert (or 
(and (= (pet H1) 4) (= (cigar H2) 2) ( or (= (position H1) (- (position H2) 1)) (= (position H1) (+ (position H2) 1))))
(and (= (pet H1) 4) (= (cigar H3) 2) ( or (= (position H1) (- (position H3) 1)) (= (position H1) (+ (position H3) 1))))
(and (= (pet H1) 4) (= (cigar H4) 2) ( or (= (position H1) (- (position H4) 1)) (= (position H1) (+ (position H4) 1))))
(and (= (pet H1) 4) (= (cigar H5) 2) ( or (= (position H1) (- (position H5) 1)) (= (position H1) (+ (position H5) 1))))

(and (= (pet H2) 4) (= (cigar H1) 2) ( or (= (position H2) (- (position H1) 1)) (= (position H2) (+ (position H1) 1))))
(and (= (pet H2) 4) (= (cigar H3) 2) ( or (= (position H2) (- (position H3) 1)) (= (position H2) (+ (position H3) 1))))
(and (= (pet H2) 4) (= (cigar H4) 2) ( or (= (position H2) (- (position H4) 1)) (= (position H2) (+ (position H4) 1))))
(and (= (pet H2) 4) (= (cigar H5) 2) ( or (= (position H2) (- (position H5) 1)) (= (position H2) (+ (position H5) 1))))

(and (= (pet H3) 4) (= (cigar H1) 2) ( or (= (position H3) (- (position H1) 1)) (= (position H3) (+ (position H1) 1))))
(and (= (pet H3) 4) (= (cigar H2) 2) ( or (= (position H3) (- (position H2) 1)) (= (position H3) (+ (position H2) 1))))
(and (= (pet H3) 4) (= (cigar H4) 2) ( or (= (position H3) (- (position H4) 1)) (= (position H3) (+ (position H4) 1))))
(and (= (pet H3) 4) (= (cigar H5) 2) ( or (= (position H3) (- (position H5) 1)) (= (position H3) (+ (position H5) 1))))

(and (= (pet H4) 4) (= (cigar H1) 2) ( or (= (position H4) (- (position H1) 1)) (= (position H4) (+ (position H1) 1))))
(and (= (pet H4) 4) (= (cigar H2) 2) ( or (= (position H4) (- (position H2) 1)) (= (position H4) (+ (position H2) 1))))
(and (= (pet H4) 4) (= (cigar H3) 2) ( or (= (position H4) (- (position H3) 1)) (= (position H4) (+ (position H3) 1))))
(and (= (pet H4) 4) (= (cigar H5) 2) ( or (= (position H4) (- (position H5) 1)) (= (position H4) (+ (position H5) 1))))

(and (= (pet H5) 4) (= (cigar H1) 2) ( or (= (position H5) (- (position H1) 1)) (= (position H5) (+ (position H1) 1))))
(and (= (pet H5) 4) (= (cigar H1) 2) ( or (= (position H5) (- (position H2) 1)) (= (position H5) (+ (position H2) 1))))
(and (= (pet H5) 4) (= (cigar H3) 2) ( or (= (position H5) (- (position H3) 1)) (= (position H5) (+ (position H3) 1))))
(and (= (pet H5) 4) (= (cigar H4) 2) ( or (= (position H5) (- (position H4) 1)) (= (position H5) (+ (position H4) 1))))
)
)

;the norw lives next to the blue house H1 norwe
(assert (=> (or (= (position H1) (- (position H2) 1)) (= (position H1) (+ (position H2) 1))) (= (color H2) 5)))
(assert (=> (or (= (position H1) (- (position H3) 1)) (= (position H1) (+ (position H3) 1))) (= (color H3) 5)))
(assert (=> (or (= (position H1) (- (position H4) 1)) (= (position H1) (+ (position H4) 1))) (= (color H4) 5)))
(assert (=> (or (= (position H1) (- (position H5) 1)) (= (position H1) (+ (position H5) 1))) (= (color H5) 5)))


(assert (=> (= (color H2) 5) (or (= (position H2) (- (position H1) 1)) (= (position H2) (+ (position H1) 1)) )))
(assert (=> (= (color H3) 5) (or (= (position H3) (- (position H1) 1)) (= (position H3) (+ (position H1) 1)) )))
(assert (=> (= (color H4) 5) (or (= (position H4) (- (position H1) 1)) (= (position H4) (+ (position H1) 1)) )))
(assert (=> (= (color H5) 5) (or (= (position H5) (- (position H1) 1)) (= (position H5) (+ (position H1) 1)) )))

;the bland guy has water neighbour
(assert (or
(and (= (cigar H1) 3) (= (beverage H2) 5) ( or (= (position H1) (- (position H2) 1)) (= (position H1) (+ (position H2) 1))))
(and (= (cigar H1) 3) (= (beverage H3) 5) ( or (= (position H1) (- (position H3) 1)) (= (position H1) (+ (position H3) 1))))
(and (= (cigar H1) 3) (= (beverage H4) 5) ( or (= (position H1) (- (position H4) 1)) (= (position H1) (+ (position H4) 1))))
(and (= (cigar H1) 3) (= (beverage H5) 5) ( or (= (position H1) (- (position H5) 1)) (= (position H1) (+ (position H5) 1))))

(and (= (cigar H2) 3) (= (beverage H1) 5) ( or (= (position H2) (- (position H1) 1)) (= (position H2) (+ (position H1) 1))))
(and (= (cigar H2) 3) (= (beverage H3) 5) ( or (= (position H2) (- (position H3) 1)) (= (position H2) (+ (position H3) 1))))
(and (= (cigar H2) 3) (= (beverage H4) 5) ( or (= (position H2) (- (position H4) 1)) (= (position H2) (+ (position H4) 1))))
(and (= (cigar H2) 3) (= (beverage H5) 5) ( or (= (position H2) (- (position H5) 1)) (= (position H2) (+ (position H5) 1))))

(and (= (cigar H3) 3) (= (beverage H1) 5) ( or (= (position H3) (- (position H1) 1)) (= (position H3) (+ (position H1) 1))))
(and (= (cigar H3) 3) (= (beverage H2) 5) ( or (= (position H3) (- (position H2) 1)) (= (position H3) (+ (position H2) 1))))
(and (= (cigar H3) 3) (= (beverage H4) 5) ( or (= (position H3) (- (position H4) 1)) (= (position H3) (+ (position H4) 1))))
(and (= (cigar H3) 3) (= (beverage H5) 5) ( or (= (position H3) (- (position H5) 1)) (= (position H3) (+ (position H5) 1))))

(and (= (cigar H4) 3) (= (beverage H1) 5) ( or (= (position H4) (- (position H1) 1)) (= (position H4) (+ (position H1) 1))))
(and (= (cigar H4) 3) (= (beverage H2) 5) ( or (= (position H4) (- (position H2) 1)) (= (position H4) (+ (position H2) 1))))
(and (= (cigar H4) 3) (= (beverage H3) 5) ( or (= (position H4) (- (position H3) 1)) (= (position H4) (+ (position H3) 1))))
(and (= (cigar H4) 3) (= (beverage H5) 5) ( or (= (position H4) (- (position H5) 1)) (= (position H4) (+ (position H5) 1))))

(and (= (cigar H5) 3) (= (beverage H1) 5) ( or (= (position H5) (- (position H1) 1)) (= (position H5) (+ (position H1) 1))))
(and (= (cigar H5) 3) (= (beverage H1) 5) ( or (= (position H5) (- (position H2) 1)) (= (position H5) (+ (position H2) 1))))
(and (= (cigar H5) 3) (= (beverage H3) 5) ( or (= (position H5) (- (position H3) 1)) (= (position H5) (+ (position H3) 1))))
(and (= (cigar H5) 3) (= (beverage H4) 5) ( or (= (position H5) (- (position H4) 1)) (= (position H5) (+ (position H4) 1))))
))


(check-sat)
(get-model)

