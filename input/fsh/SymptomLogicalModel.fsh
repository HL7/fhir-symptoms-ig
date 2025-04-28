Logical: SymptomLogicalModel
Parent: Element
Id: SymptomLogicalModel
Description: "Details about the Symptom."
Title: "Symptom Logical Model"
Characteristics: #can-be-target

* identifier
* identifier.system
* identifier.value

* keyFeatures 0..* BackboneElement "The key features of the symptom" ""
* keyFeatures.location 0..* CodeableConcept "Where on the body the feature is located" ""
* keyFeatures.location.laterality 0..1 CodeableConcept "" ""
* keyFeatures.location.qualifier 0..* 
* keyFeatures.location.bodySite 0..* CodeableConcept 
* keyFeatures.location.note 0..1 string "" "" 
* keyFeatures.quality 1..1 
* keyFeatures.severity 1..1 
* keyFeatures.functionalImpact 1..1 CodeableConcept
* keyFeatures.surroundingEvents 0..* 
* keyFeatures.triggers 0..* BackboneElement
* keyFeatures.triggers.code
* keyFeatures.triggers.value[x]
* keyFeatures.triggers.dataAbsentReason 0..1
* keyFeatures.exacerbatingFactors 0..*
* keyFeatures.alleviatingFactors 0..* 
* keyFeatures.associatedSymptom
* keyFeatures.riskFactor 0..* BackboneElement
* keyFeatures.riskFactor.derivedFrom
* keyFeatures.riskfactor.code
* keyFeatures.riskFactor.value[x]
* keyFeatures.riskFactor.reasonReference
* keyFeatures.interventions
* keyFeatures.diagnosis
* keyFeatures.diagnosis.evidence
* keyFeatures.diagnosis.note 0..1 string
* keyFeatures.relatedEncounter

* inputs 0..* BackboneElement "Information about the symptom"
* inputs.patient
* inputs.careTeam
* inputs.careTeam.member

* timing 1..1 BackboneElement ""
* timing.onset 1..1 dateTime "Time of first appearance" ""
* timing.onset.speed
* timing.onset.manifestation.code
* timing.onset.timing.code
* timing.onset.timing.value[x]
* timing.onset.timing.dataAbsentReason
* timing.duration
* timing.frequency
* timing.clinicalCourse
* timing.trend

* metadata 1..1 BackboneElement
* metadate.documentationDate 1..1 dateTime "Date of recorded visit"

