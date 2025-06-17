Profile: SymptomObservation
Parent: Observation
Id: SymptomObservation
Description: "The Symptom observation contains all information given about a patient's symptoms."
Title: "Symptom Observation"

* identifier 1..1  
* status 1..1  
* code 1..1 
* subject 1..1 
* encounter 0..1
* effective[x] 0..1 
* performer 1..1
* value[x] 0..1
* note 0..1
* bodyStructure 1..1
* referenceRange 1..1
  * type 0..1
  * text 0..1
* component 0..1
  * code 1..1
  * valueQuantity 0..1
  * valueCodeableConcept 0..1		
  * valueString 0..1
  * valueBoolean 0..1
  * valueInteger 0..1
  * valueRange 0..1
  * valueTime 0..1
  * valueDateTime 0..1
  * valuePeriod 0..1

