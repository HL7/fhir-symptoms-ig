Logical: SymptomLogicalModel
Parent: Element
Id: SymptomLogicalModel
Description: "Details about the Symptom."
Title: "Symptom Logical Model"
Characteristics: #can-be-target

* identifier
* identifier.system
* identifier.value

* keyFeatures
* keyFeatures.location
* keyFeatures.location.laterality
* keyFeatures.location.qualifier
* keyFeatures.quality
* keyFeatures.severity
* keyFeatures.functionalImpact
* keyFeatures.surroundingEvents
* keyFeatures.triggers
* keyFeatures.exacerbatingFactors
* keyFeatures.alleviatingFactors

* inputs
* inputs.patient
* inputs.careTeam
* inputs.careTeam.member

* timing
* timing.onset
* timing.onset.speed
* timing.duration
* timing.frequency
* timing.clinicalCourse
* timing.trend

* metadata
* metadate.documentationDate
