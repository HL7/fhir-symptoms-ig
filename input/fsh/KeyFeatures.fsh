Profile: SeverityObservation
Parent: Observation
Id: SeverityObservation
Description: "The severity of the patient's experienced symptom."
Title: "Severity Observation"

* code 1..1 MS
* code = http://loinc.org#64750-3 "Severity of symptoms"
* focus 1..1 MS
* focus only Reference(SymptomObservation)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from http://loinc.org/vs/LL1156-0 (example)
* note MS

Profile: QualityObservation
Parent: Observation
Id: QualityObservation
Description: "The quality of the patient's experienced symptom."
Title: "Quality Observation"

* code 1..1 MS //32419-4, 72098-7
* focus 1..1 MS  
* focus only Reference(SymptomObservation)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* note MS

Profile: FunctionalImpactObservation
Parent: Observation
Id: FunctionalImpactObservation
Description: "The functional impact of the patient's experienced symptom."
Title: "Functional Impact Observation"

* code 1..1 MS //70795-0, 47420-5, 54522-8
* focus 1..1 MS  
* focus only Reference(SymptomObservation)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* note MS
