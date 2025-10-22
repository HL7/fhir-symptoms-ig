Profile: SymptomAbsentObservation
Parent: Observation
Id: SymptomAbsentObservation
Description: "Used to record the absence of a Symptom as reported by a patient or their caregiver."
Title: "Symptom Absent Observation"

* extension contains http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo named associatedSymptomOrCondition 0..*
* extension[associatedSymptomOrCondition].valueReference only Reference(SymptomObservation or SymptomAbsentObservation or Condition)
  * insert ShouldSupport([[Other symptoms or conditions that are associated with this symptom]])

* status 1..1 MS
* code 1..1 MS
* code = http://loinc.org#111551-8 "Symptom absent"
* subject 1..1 MS
  * ^short = "The patient who is experiencing the symptom"
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime or Period
* issued
  * insert ShouldSupport([[Instant when absence of symptom recorded]])
* performer 1..1 MS
  * ^short = "The person who is reporting the symptom information"
* performer only Reference(Patient or RelatedPerson)
* value[x] 1..1 MS
  * ^short = "Coded description of symptom"
* value[x] only CodeableConcept
* value[x] from CommonSymptomCodes (preferred)
  * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[=].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = http://hl7.org/fhir/tools/CodeSystem/additional-binding-purpose#maximum
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/ValueSet/clinical-findings"
  * ^binding.extension[=].extension[+].url = "key"
  * ^binding.extension[=].extension[=].valueId = "MaxSymptoms"
* note
  * insert ShouldSupport([[Patient or caregiver description of absent symptom]])
* bodySite MS
  * ^short = "Used to indicate a body site where the symptom is NOT occurring, eg. no pain in my right knee"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred) 

* dataAbsentReason 0..0
* interpretation 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
