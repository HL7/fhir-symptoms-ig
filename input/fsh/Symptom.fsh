Profile: SymptomObservation
Parent: Observation
Id: SymptomObservation
Description: "The Symptom observation contains all information given about a patient's symptoms."
Title: "Symptom Observation"

* symptomIdentifier 1..1 string "Symptom Identifier" "A unique identifier of an instance of a Symptom" //identifier
* status 1..1 code "Symptom status" "" //status
* code 1..1 CodeableConcept "Symptom code" "" //code
* affectedPatient 1..1 Reference(Patient) "Patient afflicted by the symptom" "" //subject

//performer
* inputs 0..1 BackboneElement "Information about who reported or documented the symptom" 
* inputs.careTeam 0..1 BackboneElement "" "Who from the care team documents the patient symptom, where and how it is documented, and in what format it is documented."
* inputs.careTeam.member 0..* Reference(PractitionerRole or Organization) "The care team member documenting the symptom" ""

//encounter
* keyFeatures.surroundingEvents 0..* BackboneElement "What was occurring at the time of symptom onset." 
* keyFeatures.surroundingEvents.triggers 0..* BackboneElement "Actions or environments that initiate the symptom."
* keyFeatures.surroundingEvents.triggers.code 1..1 CodeableConcept "Code describing the type of trigger" 
* keyFeatures.surroundingEvents.triggers.value[x] 1..1 CodeableConcept or string "Code or string describing the specific event." 
* keyFeatures.surroundingEvents.triggers.note 0..* Annotation "Free text related to the observation"
* keyFeatures.surroundingEvents.exacerbatingFactors 0..* BackboneElement "" "Patient reported actions, conditions, events, physical objects or other factors that increase or worsen symptoms or the condition of interest (pain, nausea, dyspnea, dizziness, or other)."
* keyFeatures.surroundingEvents.exacerbatingFactors.factor 0..* CodeableReference "Reference to the factor" 
* keyFeatures.surroundingEvents.exacerbatingFactors.relatedMedication 0..* BackboneElement "Medication given during the event"
* keyFeatures.surroundingEvents.exacerbatingFactors.relatedMedication.value[x] 0..* Reference(Medication) ""
* keyFeatures.surroundingEvents.alleviatingFactors 0..* BackboneElement "" "Patient-reported actions, conditions, events, or other factors that decrease the symptoms or condition"
* keyFeatures.surroundingEvents.alleviatingFactors.note 0..1 Annotation "Information given about actions, conditions, events, or other factors"
* keyFeatures.surroundingEvents.alleviatingFactors.relatedMedication 0..* BackboneElement "Medication given during the event"
* keyFeatures.surroundingEvents.alleviatingFactors.relatedMedication.value[x] 0..* Reference(Medication) ""
* keyFeatures.surroundingEvents.otherEvents 0..* CodeableConcept "Patient-reported actions that were occuring at time of symptom onset"

//effective[x]
* timing 0..1 BackboneElement "" "Timing includes the actual or estimated date/time of onset, character of onset, how often the patient experiences the symptom, and the length of time the symptom persists."
* timing.speed 0..1 CodeableConcept "The rate at which a physiological condition became apparent." ""
* timing.onset[x] 0..1 dateTime or Period "Clinically relevant time or period for the symptom since first occurance." 
* timing.note 0..1 Annotation "Free text related to the observation" 
* timing.duration[x] 0..1 Duration or CodeableConcept "The length of time the symptom persists in this instance of occurance." ""
* timing.frequency 0..1 Quantity "How often the patient experiences the symptom." ""
* timing.timePattern 0..1 CodeableConcept "The pattern of experiencing the symptom" "Continuous, intermittent, paroxysmal, or cyclic"

* inputs.text 0..* Annotation "Patient or caregiver description of symptom" //note

//bodystructure
* keyFeatures 0..* BackboneElement "Key Features" "The key features of the symptom"
* keyFeatures.location 0..* Reference(BodyStructure) "Where the patient feels the symptom in the body."

//component[x].referenceRange
* keyFeatures.quality 0..* BackboneElement "The patient's internal perception of the symptom." 
* keyFeatures.quality.assessment 0..* BackboneElement "" 
* keyFeatures.quality.assessment.code 1..1 code "Code for the specific scale or assessment (e.g., pain, depression, or disability scale)." 
* keyFeatures.quality.assessment.value[x] 1..1 CodeableConcept or string "Code or quantity for the scale or assessment" 
* keyFeatures.severity 0..1 BackboneElement "The intensity with which the patient experiences the symptom."
* keyFeatures.severity.assessment 0..* BackboneElement "" 
* keyFeatures.severity.assessment.code 1..1 code "Code for the specific scale or assessment (e.g., pain, depression, or disability scale)." 
* keyFeatures.severity.assessment.value[x] 1..1 CodeableConcept or string "Code or quantity for the scale or assessment" 
* keyFeatures.functionalImpact 0..* BackboneElement "How the symptom affects the patient's daily activities." 
* keyFeatures.functionalImpact.note 0..* Annotation "Free text related to the observation" 
* keyFeatures.functionalImpact.affectiveGrade 0..1 CodeableConcept "Emotional or mental impact of a symptom"
* keyFeatures.functionalImpact.assessment 0..* BackboneElement "" 
* keyFeatures.functionalImpact.assessment.code 1..1 code "Code for the specific scale or assessment (e.g., pain, depression, or disability scale)." 
* keyFeatures.functionalImpact.assessment.value[x] 1..1 CodeableConcept or string "Code or quantity for the scale or assessment" 

//component[x].referenceRange
* clinicalCourse 0..1 CodeableConcept "Character of symptom onset." "Term to represent both the course and onset of a disease. Many conditions with an acute (sudden) onset also have an acute (short duration) course." //https://loinc.org/89261-2/
* trend 0..1 CodeableConcept "Intensity of symptom over time" "Whether a condition is improving, worsening, stable, or resolved." //https://loinc.org/89253-9/