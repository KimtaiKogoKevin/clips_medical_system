(defrule do_skin_test "Perform Skratch Skin testing"
(symptom(name "An itchy nose" |"A stuffy nose " |"A runny nose"|"itching"|"Nasal Congestion"|"shortness of breath"|"Watery eyes"|"Continious Sneezing"))
(observation(name "sore sinuses"|"drainange in nose and throat"|"condition of the skin"|"breathing rate"|"previous allergies"))

=>
(printout t "Carry out an allergy Test (Skin scratch test) by following the steps listed  and record result
    a. Choose a site on the arm at least 5 cm from any other test site. 
Carefully scratch the skin approximately 2 mm-4 mm with a 
sterile needle (27 gauge) without drawing blood. 

b. Using dropper from Histatrol vial (Histamine Phosphate 2.75 
mg/mL for percutaneous testing), place a small drop of Histatrol 
on the site of the scratch. 


c. Read the test at 15 minutes ,  a positive scratch test is a wheal 
with surrounding erythema at least 3 mm larger than the 
negative control test, read at 15-20 minutes. if a large wheal 
reaction occurs before that time, the test site should be wiped 
free of histamine 

" crlf)
(printout t " -----------------Enter result---------
*Positive reaction
*No reaction
*Type DONE on a new line to proceed" crlf)
(bind ?skintest_result (readline))
(assert (skintest_result(result ?skintest_result)))
)







(defrule do_hmglbin_test "decides whether to do a blood  test"
(symptom(name "sleep disordered breathing"|"Fatigue"|"Coughing"|"Sore and scratchy throat"|"Headaches"))
(observation(name "never tested for allergens" | "currently on medication"|"genetic history of allergies "))

=>
(printout t "Carry out an allergy blood  Test ( Immunoglobulin E (IgE)) and record result" crlf)
(printout t "

1.Obtain a small blood sample from a vein in patiends arm usind a small needle
 2.Collect the blood in the test tube /vial 
 3. Test the blood sample and observe the reaction to allergens (Pollen , Milk , eggs , peanuts , soy , wheat , Tree Nut ,Shell fish , Fish , Sesame , Pollen , Dust mites , Fungal Spores , Pet danders)
 4. Measure the level of  Immunoglobulin E (IgE) Protiens in the blood
 5. If the Immunoglobulin levels are higher than normal to a specific allergen patient is sensitized and allergic to the allergen otherwise  not allergic

*Observe the level of Immunoglobulin E (IgE) to specific allergens and determine if patient is sensitized and allergic to allergen or not
  Type True if high  False if low and DONE on a newline  to continue " crlf)
(bind ?Immunoglobulin_E_result (readline))
(assert (Immunoglobulin_E_result(result ?Immunoglobulin_E_result)))
)






(defrule prmpt ""
=>
(printout t "---------------Step 5 is to carry out a medical test------------------------------------" crlf)
)