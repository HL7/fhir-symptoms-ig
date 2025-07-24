Profile: SymptomObservation
Parent: Observation
Id: SymptomObservation
Description: "The Symptom observation contains all information given about a patient's symptoms."
Title: "Symptom Observation"

* identifier 1..1 MS
* status 1..1
* code from https://hl7.org/fhir/ValueSet/clinical-findings (preferred) //= http://loinc.org#75325-1 "Symptom"
* subject 1..1 MS
* subject only Reference(Patient)
// * encounter 0..1 MS //reference(Encounter) 0..1 - how to fit surrounding events into this
// * ^short = "What was occurring at the time of symptom onset." 
* effective[x] MS
* performer 1..1 MS
* performer only Reference(Patient or RelatedPerson)
  //* ^short = "Who from the care team documents the patient symptom, where and how it is documented, and in what format it is documented."
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from https://loinc.org/LL365-8 (required)
* note MS
  * ^short = "Patient or caregiver description of symptom"
* bodySite MS
* bodySite from http://loinc.org/vs/LL5065-9 (example)
* component 0..* MS 
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains quality 0..1 MS and
                     severity 0..1 MS and
                     functionalImpact 0..* MS
* component[quality]
  * code = http://loinc.org#32419-4 "Pain quality"
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://loinc.org/vs/LL4459-5 (example)
* component[severity]
  * code = http://loinc.org#64750-3 "Severity of symptoms"
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://loinc.org/vs/LL1156-0 (example)
* component[functionalImpact]
  * code from FunctionalFinding (example)
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://loinc.org/vs/LL365-8 (required)


ValueSet: FunctionalFinding
Id: FunctionalFinding
Title: "Functional Impact"
Description: "Set of codes from SNOMED CT that describe different functional impact observations"
* codes from system http://snomed.info/sct where concept is-a "118228005"