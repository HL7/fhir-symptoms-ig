Logical: SymptomLogicalModel
Parent: Element
Id: SymptomLogicalModel
Description: "Details about the Symptom."
Title: "Symptom Logical Model"
Characteristics: #can-be-target

* identifier 1..1 string "" ""

* keyFeatures 0..* BackboneElement "The key features of the symptom" ""
* keyFeatures.location 0..* BackboneElement "Where on the body the feature is located" ""
* keyFeatures.location.laterality 0..1 CodeableConcept "" ""
* keyFeatures.location.qualifier 0..*  
* keyFeatures.location.bodySite 0..* CodeableConcept "" ""
* keyFeatures.location.note 0..1 string "" "" 
* keyFeatures.quality 1..1 
* keyFeatures.severity 1..1 
* keyFeatures.functionalImpact 1..1 CodeableConcept "" ""
* keyFeatures.surroundingEvents 0..* 
* keyFeatures.triggers 0..* BackboneElement "" ""
* keyFeatures.triggers.code 1..1
* keyFeatures.triggers.value[x] 1..1
* keyFeatures.triggers.dataAbsentReason 0..1
* keyFeatures.exacerbatingFactors 0..*
* keyFeatures.alleviatingFactors 0..* 
* keyFeatures.associatedSymptom 0..*
* keyFeatures.riskFactor 0..* BackboneElement "" ""
* keyFeatures.riskFactor.derivedFrom 0..*
* keyFeatures.riskfactor.code 1..1
* keyFeatures.riskFactor.value[x] 1..1
* keyFeatures.riskFactor.reasonReference 0..*
* keyFeatures.interventions 0..*
* keyFeatures.diagnosis 0..* BackboneElement "" ""
* keyFeatures.diagnosis.evidence 1..1
* keyFeatures.diagnosis.note 0..1 string "" ""
* keyFeatures.relatedEncounter 0..*

* inputs 0..* BackboneElement "Information about the symptom" ""
* inputs.patient 1..1 
* inputs.careTeam 0..*
* inputs.careTeam.member 0..*

* timing 1..1 BackboneElement ""
* timing.onset 1..1 BackboneElement "Time of first appearance" ""
* timing.onset.speed 1..1 
* timing.onset.manifestation.code 1..1 
* timing.onset.timing.code 1..1
* timing.onset.timing.value[x] 1..1
* timing.onset.timing.dataAbsentReason 1..1
* timing.duration 1..1
* timing.frequency 0..*
* timing.clinicalCourse 1..1
* timing.trend 0..*

* metadata 1..1 BackboneElement "" ""
* metadata.documentationDate 1..1 dateTime "Date of recorded visit"

