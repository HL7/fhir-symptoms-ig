Profile: SymptomObservation
Parent: Observation
Id: SymptomObservation
Description: "The Symptom observation contains all information given about a patient's symptoms."
Title: "Symptom Observation"

* identifier 1..1 MS
* status 1..1
* code = http://loinc.org#75325-1 "Symptom"
* subject 1..1 MS
* subject only Reference(Patient)
// * encounter 0..1 MS //reference(Encounter) 0..1 - how to fit surrounding events into this
//  ^short = "What was occurring at the time of symptom onset." 
* effective[x] MS
* performer 1..1 MS
* performer only Reference(Patient or RelatedPerson)
//  ^short = "Who from the care team documents the patient symptom, where and how it is documented, and in what format it is documented."
* value[x] 1..1 MS
* value[x] only CodeableConcept
* note MS
//  ^short = "Patient or caregiver description of symptom"
* bodySite MS
* bodySite from http://loinc.org/vs/LL5065-9 (example)

