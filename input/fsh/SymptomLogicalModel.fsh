Logical: SymptomLogicalModel
Parent: Element
Id: SymptomLogicalModel
Description: "Details about the Symptom."
Title: "Symptom Logical Model"
Characteristics: #can-be-target

* identifier 1..1 string ""

* keyFeatures 0..* BackboneElement "The key features of the symptom"
* keyFeatures.location 0..* BackboneElement "Where on the body the feature is located"
* keyFeatures.location.laterality 0..1 CodeableConcept ""
* keyFeatures.location.qualifier 0..* CodeableConcept ""
* keyFeatures.location.bodySite 0..* CodeableConcept ""
* keyFeatures.location.note 0..1 string "" 
* keyFeatures.quality 1..1 CodeableConcept ""
* keyFeatures.severity 1..1 CodeableConcept ""
* keyFeatures.functionalImpact 1..1 CodeableConcept ""
* keyFeatures.surroundingEvents 0..* CodeableConcept ""
* keyFeatures.triggers 0..* BackboneElement ""
* keyFeatures.triggers.value[x] 1..1 CodeableConcept or string ""
* keyFeatures.triggers.dataAbsentReason 0..1 CodeableConcept ""
* keyFeatures.exacerbatingFactors 0..* CodeableConcept ""
* keyFeatures.alleviatingFactors 0..* CodeableConcept ""
* keyFeatures.associatedSymptom 0..* CodeableConcept ""
* keyFeatures.riskFactor 0..* BackboneElement ""
* keyFeatures.riskFactor.derivedFrom 0..* CodeableConcept ""
* keyFeatures.riskFactor.value[x] 1..1 CodeableConcept or string ""
* keyFeatures.riskFactor.reasonReference 0..* Reference(Condition)  ""
* keyFeatures.interventions 0..* CodeableConcept ""
* keyFeatures.diagnosis 0..* BackboneElement ""
* keyFeatures.diagnosis.evidence 1..1 CodeableConcept ""
* keyFeatures.diagnosis.note 0..1 string ""
* keyFeatures.relatedEncounter 0..* Reference(Encounter) ""

* inputs 0..* BackboneElement "Information about the symptom"
* inputs.patient 1..1 Reference(Patient) ""
* inputs.careTeam 0..* BackboneElement ""
* inputs.careTeam.member 0..* Reference(PractitionerRole or Organization) ""

* timing 1..1 BackboneElement ""
* timing.onset 1..1 BackboneElement "Time of first appearance" ""
* timing.onset.speed[x] 1..1 Quantity or CodeableConcept ""
* timing.onset.manifestation 1..1 CodeableConcept ""
* timing.onset.timing[x] 1..1 CodeableConcept or Timing ""
* timing.duration 1..1 Duration ""
* timing.frequency 0..1 Ratio ""
* timing.clinicalCourse 1..1 CodeableConcept ""
* timing.trend 0..* CodeableConcept ""

* metadata 1..1 BackboneElement ""
* metadata.documentationDate 1..1 dateTime "Date of recorded visit"

