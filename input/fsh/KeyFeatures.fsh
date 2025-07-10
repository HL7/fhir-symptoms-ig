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
* bodySite MS
* bodySite from http://loinc.org/vs/LL5065-9 (example)

Profile: QualityObservation
Parent: Observation
Id: QualityObservation
Description: "The quality of the patient's experienced symptom."
Title: "Quality Observation"

* code 1..1 MS
* focus 1..1 MS  
* focus only Reference(SymptomObservation)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* bodySite MS
* bodySite from http://loinc.org/vs/LL5065-9 (example)

Profile: FunctionalImpactObservation
Parent: Observation
Id: FunctionalImpactObservation
Description: "The functional impact of the patient's experienced symptom."
Title: "Functional Impact Observation"

* code 1..1 MS
* focus 1..1 MS  
* focus only Reference(SymptomObservation)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* bodySite MS
* bodySite from http://loinc.org/vs/LL5065-9 (example)
