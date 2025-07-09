Logical: SymptomLogicalModel
Parent: Element
Id: SymptomLogicalModel
Description: "Details about the Symptom."
Title: "Symptom Logical Model"
Characteristics: #can-be-target

* identifier 1..1 string ""
* affectedPatient 1..1 Reference(Patient) ""
* recorder 1..1 Reference(Patient or RelatedPerson or PractitionerRole or Organization) ""

* inputs 0..* BackboneElement "Information about who reported or documented the symptom" 
* inputs.text 1..1 Annotation "Patient or caregiver description of symptom"
* inputs.careTeamMember 0..1 Reference(Patient or RelatedPerson or PractitionerRole or Organization) "The care team member documenting the symptom"

* keyFeatures 0..* BackboneElement "Key Features" "The key features of the symptom"
* keyFeatures.location 0..* Reference(BodyStructure) "Where the patient feels the symptom in the body."
* keyFeatures.quality 0..1 BackboneElement "The patient's internal perception of the symptom." 
* keyFeatures.quality.code 1..1 code "Code for the specific scale or assessment (e.g., pain, depression, or disability scale)." 
* keyFeatures.quality.value[x] 1..1 CodeableConcept or string "Code or quantity for the scale or assessment" 
* keyFeatures.severity 0..1 BackboneElement "The intensity with which the patient experiences the symptom."
* keyFeatures.severity.scaleCode 1..1 code "Code for the specific scale or assessment (e.g., pain, depression, or disability scale)." 
* keyFeatures.severity.value[x] 1..1 CodeableConcept or string "Code or quantity for the scale or assessment" 
* keyFeatures.functionalImpact 0..* BackboneElement "How the symptom affects the patient's daily activities." 
* keyFeatures.functionalImpact.note 0..1 Annotation "Free text related to the observation" 
* keyFeatures.functionalImpact.affectiveGrade 0..1 CodeableConcept "Emotional or mental impact of a symptom"
* keyFeatures.functionalImpact.scaleCode 1..1 code "Code for the specific scale or assessment (e.g., pain, depression, or disability scale)." 
* keyFeatures.functionalImpact.value[x] 1..1 CodeableConcept or string "Code or quantity for the scale or assessment" 
* keyFeatures.surroundingEvents 0..* BackboneElement "What was occurring at the time of symptom onset." 
* keyFeatures.surroundingEvents.triggers 0..* BackboneElement "Actions or environments that initiate the symptom."
* keyFeatures.surroundingEvents.triggers.triggerCode 1..1 CodeableConcept "Code describing the type of trigger" 
* keyFeatures.surroundingEvents.triggers.value[x] 1..1 CodeableConcept or string "Code or string describing the specific event." 
* keyFeatures.surroundingEvents.triggers.note 0..1 Annotation "Free text related to the observation"
* keyFeatures.surroundingEvents.exacerbatingFactors 0..1 BackboneElement "" "Patient reported actions, conditions, events, physical objects or other factors that increase or worsen symptoms or the condition of interest (pain, nausea, dyspnea, dizziness, or other)."
* keyFeatures.surroundingEvents.exacerbatingFactors.factor 0..* CodeableReference "Reference to the factor" 
* keyFeatures.surroundingEvents.exacerbatingFactors.relatedMedication 0..* Reference(Medication) ""
* keyFeatures.surroundingEvents.exacerbatingFactors.note 0..1 Annotation "Information given about actions, conditions, events, or other factors"
* keyFeatures.surroundingEvents.alleviatingFactors 0..* BackboneElement "" "Patient-reported actions, conditions, events, or other factors that decrease the symptoms or condition"
* keyFeatures.surroundingEvents.alleviatingFactors.factor 0..* CodeableReference "Reference to the factor" 
* keyFeatures.surroundingEvents.alleviatingFactors.note 0..1 Annotation "Information given about actions, conditions, events, or other factors"
* keyFeatures.surroundingEvents.alleviatingFactors.relatedMedication 0..* Reference(Medication) ""
* keyFeatures.surroundingEvents.otherEvents 0..* CodeableConcept "Patient-reported actions that were occuring at time of symptom onset"

* timing 0..1 BackboneElement "" "Timing includes the actual or estimated date/time of onset, character of onset, how often the patient experiences the symptom, and the length of time the symptom persists."
* timing.speed 0..1 CodeableConcept "The rate at which a physiological condition became apparent." ""
* timing.onset[x] 0..1 dateTime or Period "Clinically relevant time or period for the symptom since first occurance." 
* timing.note 0..1 Annotation "Free text related to the observation" 
* timing.duration[x] 0..1 Duration or CodeableConcept "The length of time the symptom persists in this instance of occurance." ""
* timing.frequency 0..1 Quantity "How often the patient experiences the symptom." ""
* timing.timePattern 0..1 CodeableConcept "The pattern of experiencing the symptom" "Continuous, intermittent, paroxysmal, or cyclic"

* clinicalCourse 0..1 CodeableConcept "Character of symptom onset." "Term to represent both the course and onset of a disease. Many conditions with an acute (sudden) onset also have an acute (short duration) course." //https://loinc.org/89261-2/
* trend 0..1 CodeableConcept "Intensity of symptom over time" "Whether a condition is improving, worsening, stable, or resolved." //https://loinc.org/89253-9/

* metadata 1..1 BackboneElement "" "" //eventually provenance
* metadata.documentationDate 1..1 dateTime "Date of recorded visit" "The date the symptom was entered, edited, or deleted."
* metadata.issued 1..1 dateTime "Date/time when the current version was made available."

