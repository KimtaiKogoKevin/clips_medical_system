(deftemplate symptom(slot name))
(deftemplate observation(slot name))

(deftemplate skintest_result(slot result))
(deftemplate skintest_result_False(slot result))

(deftemplate Immunoglobulin_E_result(slot result))
(deftemplate Immunoglobulin_E_result_False(slot result))


(deftemplate patient(slot name)(slot age)(slot sex)(slot occupation)(slot hobbies)(slot latex)(slot foodallergens) (slot pet))

(deftemplate diagnosis(slot name))