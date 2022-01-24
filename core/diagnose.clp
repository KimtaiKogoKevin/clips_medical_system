(defrule skin_test "This tests the skin disease" 
	(symptom(name "An itchy nose" |"A stuffy nose " |"A runny nose"|"itching"|"Nasal Congestion"|"shortness of breath"|"Watery eyes"|"Continious Sneezing"))
	(observation(name "sore sinuses"|"drainange in nose and throat"|"condition of the skin"|"breathing rate"| "previous allergies"))
	(skintest_result(result "Positive reaction"))


=>
(assert (diagnosis(name skin_test)))

(printout t "Positive alleregn reaction , avoid contact with specifed allergens in the environment and use if neccessary prescribed medications" crlf)
)




(defrule skin_test_False "This tests the skin disease" 
	
	(skintest_result(result "No reaction"))
=>
(assert (diagnosis(name skin_test_False)))

(printout t "No allergens detected the symptoms potrayed are not related to an allergen , It is recommendend to take a blood test for confirmation " crlf)
)






(defrule Immunoglobulin_E_result "This tests whether the patients Immunoglobulin E (IgE) levels" 
	(symptom(name "sleep disordered breathing"|"Fatigue"|"Coughing"|"Sore and scratchy throat"|"Headaches"))
	(observation(name "never tested for allergens"|"currently on medication"|"genetic history of allergies "))
    (Immunoglobulin_E_result(result "True" ))
    
=>
(assert (diagnosis(name Immunoglobulin_E_result)))
(printout t "If Patient is sensitized and Immunoglobulin levels are high after exposure to alleregn the patient has an allergy to the alleregn , prescribe remedies to symptoms i.e Home/Lifestyle remedies and Alternative Medicines Based 
On the Allergen
If patient has normal Immunoglobulin E (IgE) levels the symptoms are not related to any alleregn " crlf)
)



(defrule Immunoglobulin_E_result_False "This tests whether the patients Immunoglobulin E (IgE) levels" 
	
    (Immunoglobulin_E_result(result "False" ))
    =>
(assert (diagnosis(name Immunoglobulin_E_result_False)))
(printout t " No allergen reaction , patient did not show any reaction to the allergens " crlf)
)
