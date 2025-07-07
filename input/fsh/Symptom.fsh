Profile: SymptomObservation
Parent: Observation
Id: SymptomObservation
Description: "The Symptom observation contains all information given about a patient's symptoms."
Title: "Symptom Observation"

* identifier 1..1 MS
* status 1..1
* code 1..1 // loinc code 10168-3/10169-1/10170-9/10171-7/10172-5/10173-3 - Symptoms & diseases
* subject 1..1 MS
* encounter 0..1 MS //reference(Encounter) 0..1 - how to fit surrounding events into this
//  ^short = "What was occurring at the time of symptom onset." 
* effective[x] 0..1 MS
* performer 1..1 MS
//  ^short = "Who from the care team documents the patient symptom, where and how it is documented, and in what format it is documented."
* value[x] 0..1 MS
* note 0..1 MS
//  ^short = "Patient or caregiver description of symptom"
* bodyStructure 1..1 MS
* referenceRange 1..1 MS
  * type 0..1 MS
  * text 0..1 MS
* component MS
  * code MS
  * valueQuantity MS
  * valueCodeableConcept MS	
  * valueString MS
  * valueBoolean MS
  * valueInteger MS
  * valueRange MS
  * valueTime MS
  * valueDateTime MS
  * valuePeriod MS

