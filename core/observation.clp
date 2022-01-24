(defrule read_doctor_observations "Reads the patient symptoms"
=>
(printout t "--------------Step 3 is to observe your patient----------------------------------------" crlf)
(bind ?observation "")
(printout t "

-sore sinuses
-drainange in nose and throat
-condition of the skin
-breathing rate
-never tested for allergens
-currently on medication
-genetic history of allergies 
-previous allergies

" crlf)

(printout t "Type the name as it appears above or type others or DONE" crlf)
(bind ?observation (readline))
(while (not (eq (str-compare ?observation "DONE") 0))

(assert (observation(name ?observation)))
(bind ?observation (readline))

)
)