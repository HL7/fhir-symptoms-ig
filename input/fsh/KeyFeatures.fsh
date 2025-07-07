Profile: SeverityObservation
Parent: Observation
Id: SeverityObservation
Description: "The severity of the patient's experienced symptom."
Title: "Severity Observation"

* identifier 1..1 MS
* status 1..1
* code 1..1 
* subject 1..1 MS
* focus 1..1 MS  

Profile: QualityObservation
Parent: Observation
Id: QualityObservation
Description: "The quality of the patient's experienced symptom."
Title: "Quality Observation"

* identifier 1..1 MS
* status 1..1
* code 1..1 
* subject 1..1 MS
* focus 1..1 MS  

Profile: FunctionalImpactObservation
Parent: Observation
Id: FunctionalImpactObservation
Description: "The functional impact of the patient's experienced symptom."
Title: "Functional Impact Observation"

* identifier 1..1 MS
* status 1..1
* code 1..1 
* subject 1..1 MS
* focus 1..1 MS  