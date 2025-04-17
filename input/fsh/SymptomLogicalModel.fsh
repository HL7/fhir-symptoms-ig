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
* keyFeatures.location 0..* "Where on the body the feature is located" ""
* keyFeatures.location.laterality 0..1  
* keyFeatures.location.qualifier 0..* 
* keyFeatures.quality 1..1 
* keyFeatures.severity 1..1 
* keyFeatures.functionalImpact 1..1 CodeableConcept
* keyFeatures.surroundingEvents 0..* 
* keyFeatures.triggers 0..*
* keyFeatures.exacerbatingFactors 0..*
* keyFeatures.alleviatingFactors 0..* 

* inputs 0..* BackboneElement "Information about the symptom"
* inputs.patient
* inputs.careTeam
* inputs.careTeam.member

* timing 1..1 BackboneElement ""
* timing.onset
* timing.onset.speed
* timing.duration
* timing.frequency
* timing.clinicalCourse
* timing.trend

* metadata 1..1 BackboneElement
* metadate.documentationDate
