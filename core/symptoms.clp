(defrule read_patient_symptoms "Reads the patient symptoms"
=>
(printout t "--------------Module II Colect the Patients Allergic Symptoms---------------------------------" crlf)
(bind ?symptom "")
(printout t "
*Continious Sneezing
*A runny nose
*A stuffy nose 
*An itchy nose
*itching 
*Sore and scratchy throat
*Coughing
*Headaches
*Nasal Congestion
*Fatigue
*sleep disordered breathing
*shortness of breath
*Watery eyes"
 crlf)
(printout t "Type the name as it appears above or type others or DONE" crlf)
(bind ?symptom (readline))
(while (not (eq (str-compare ?symptom "DONE") 0))

(assert (symptom(name ?symptom)))
(bind ?symptom (readline))

)
)