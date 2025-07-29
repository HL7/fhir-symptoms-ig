Logical: SymptomLogicalModel
Parent: Element
Id: SymptomLogicalModel
Description: "Details about the Symptom."
Title: "Symptom Logical Model"

* identifier 1..1 string "A unique string that identifies this instance of a symptom"
* symptomCode 1..1 CodeableConcept "Coded description of symptom"
* affectedPatient 1..1 Patient "The patient who is experiencing the symptom"
* reporter[x] 1..1 Patient or RelatedPerson "The person who is reporting the symptom information"
* symptomDescription 0..* Annotation "Textual description of symptom as provided by patient or care team member"
* location 0..* BodyStructure "Where the patient feels the symptom in the body."

* keyFeatures 1..1 BackboneElement "Key Features" "The key features of the symptom"

* keyFeatures.quality 0..1 BackboneElement "The patient's internal perception of the symptom." 
* keyFeatures.quality.note 0..1 Annotation "Textual description of the symptom quality" 
* keyFeatures.quality.scaleCode 0..1 code "Code for the specific scale or assessment (if any) used to determine the quality" 
* keyFeatures.quality.value 1..1 CodeableConcept "Code that represents the symptom quality" 

* keyFeatures.severity 0..1 BackboneElement "The intensity with which the patient experiences the symptom."
* keyFeatures.severity.note 0..1 Annotation "Textual description of the symptom quality" 
* keyFeatures.severity.scaleCode 0..1 code "Code for the specific scale or assessment if any used to determine the severity" 
* keyFeatures.severity.value 1..1 CodeableConcept "Code that represents the symptom severity" 

* keyFeatures.functionalImpact 0..1 BackboneElement "How the symptom affects the patient's daily activities." 
* keyFeatures.functionalImpact.note 0..1 Annotation "Textual description of the impact" 
* keyFeatures.functionalImpact.scaleCode 0..1 code "Code for the specific scale or assessment (if any) used to determine the impact" 
* keyFeatures.functionalImpact.value 1..1 CodeableConcept "Code that represents the functional impact" 

* keyFeatures.affectiveGrade 0..1 BackboneElement "Emotional or mental impact of a symptom." 
* keyFeatures.affectiveGrade.note 0..1 Annotation "Textual description of the grade" 
* keyFeatures.affectiveGrade.value 1..1 CodeableConcept "Code that represents the affective grade" 

* keyFeatures.surroundingEvents 0..1 BackboneElement "What was occurring at the time of symptom onset." 

* keyFeatures.surroundingEvents.triggers 0..* BackboneElement "Actions or environments that initiate the symptom."
* keyFeatures.surroundingEvents.triggers.triggerCode 1..1 CodeableConcept "Code describing the type of trigger" 
* keyFeatures.surroundingEvents.triggers.value[x] 1..1 CodeableConcept or string "Code or string describing the specific event." 
* keyFeatures.surroundingEvents.triggers.note 0..1 Annotation "Free text related to the observation"

* keyFeatures.surroundingEvents.exacerbatingFactors 0..* BackboneElement "" "Patient reported actions, conditions, events, physical objects or other factors that increase or worsen symptoms or the condition of interest (pain, nausea, dyspnea, dizziness, or other)."
* keyFeatures.surroundingEvents.exacerbatingFactors.factor 0..* CodeableReference "Reference to the factor" 
* keyFeatures.surroundingEvents.exacerbatingFactors.relatedMedication 0..* Medication ""
* keyFeatures.surroundingEvents.exacerbatingFactors.note 0..1 Annotation "Information given about actions, conditions, events, or other factors"

* keyFeatures.surroundingEvents.alleviatingFactors 0..* BackboneElement "" "Patient-reported actions, conditions, events, or other factors that decrease the symptoms or condition"
* keyFeatures.surroundingEvents.alleviatingFactors.factor 0..* CodeableReference "Reference to the factor" 
* keyFeatures.surroundingEvents.alleviatingFactors.note 0..1 Annotation "Information given about actions, conditions, events, or other factors"
* keyFeatures.surroundingEvents.alleviatingFactors.relatedMedication 0..* Medication ""

* keyFeatures.surroundingEvents.otherEvents 0..* CodeableConcept "Patient-reported actions that were occuring at time of symptom onset"

* timing 0..1 BackboneElement "" "Timing includes the actual or estimated date/time of onset, character of onset, how often the patient experiences the symptom, and the length of time the symptom persists."
* timing.speed 0..1 CodeableConcept "The rate at which a physiological condition became apparent." ""
* timing.onset[x] 0..1 dateTime or Period "Clinically relevant time or period for the symptom since first occurance." 
* timing.note 0..1 Annotation "Free text related to the observation" 
* timing.duration[x] 0..1 Duration or CodeableConcept "The length of time the symptom persists in this instance of occurance." ""
* timing.frequency 0..1 Quantity "How often the patient experiences the symptom." ""
* timing.timePattern 0..1 CodeableConcept "The pattern of experiencing the symptom" "Continuous, intermittent, paroxysmal, or cyclic"

* clinicalCourse 0..1 CodeableConcept "Character of symptom onset." "Term to represent both the course and onset of a disease. Many conditions with an acute (sudden) onset also have an acute (short duration) course."
* trend 0..1 CodeableConcept "Intensity of symptom over time" "Whether a condition is improving, worsening, stable, or resolved."

* metadata 1..1 BackboneElement "Non clinical information about the symptom"
* metadata.documentationDate 1..1 dateTime "Date of recorded visit" "The date the symptom was entered, edited, or deleted."
* metadata.issued 1..1 dateTime "Date/time when the current version was made available."

