Logical: SymptomLogicalModel
Parent: Element
Id: SymptomLogicalModel
Description: """The FHIR Symptoms Logical Model defines the conceptual representation of symptom data, independent of any particular FHIR resource. It specifies the key elements needed to describe symptoms, including onset, severity, course, body site, and qualitative descriptors. This logical model captures the semantics of symptoms and provides a consistent structure for implementers and modelers."""
Title: "Symptom Logical Model"

* identifier 1..1 string "A unique string that identifies this instance of a symptom"
* symptomCode 1..1 CodeableConcept "Coded description of symptom"
* presentFlag 1..1 boolean "Whether the symptom is present or absent"
* affectedPatient 1..1 Patient "The patient who is experiencing the symptom"
* reporter[x] 1..1 Patient or RelatedPerson "The person who is reporting the symptom information"
* symptomDescription 0..* Annotation "Textual description of symptom as provided by patient or caregiver"
* location 0..* CodeableConcept "Where the patient feels the symptom in the body."
* associatedSymptoms 0..* SymptomLogicalModel "Other symptoms associated with this symptom. Used when a patient or caregiver reports multiple symptoms in an encounter and a system wants to link all of them together"
* associatedConditions 0..* Condition "Condition associated with this symptom. Used when a patient, caregiver, or clinician wants to link a symptom to a new or existing Condition."

* keyFeatures 1..1 BackboneElement "Key Features" "The key features of the symptom"

* keyFeatures.quality 0..1 BackboneElement "The patient's internal perception of the symptom." 
* keyFeatures.quality.note 0..1 Annotation "Textual description of the symptom quality" 
* keyFeatures.quality.scaleCode 0..1 code "Code for the specific scale or assessment (if any) used to determine the quality" 
* keyFeatures.quality.value 1..1 CodeableConcept "Code that represents the symptom quality" 

* keyFeatures.severity 0..1 BackboneElement "The intensity with which the patient experiences the symptom."
* keyFeatures.severity.note 0..1 Annotation "Textual description of the symptom severity" 
* keyFeatures.severity.scaleCode 0..1 code "Code for the specific scale or assessment if any used to determine the severity" 
* keyFeatures.severity.value 1..1 CodeableConcept "Code that represents the symptom severity" 

* keyFeatures.functionalImpact 0..1 BackboneElement "How the symptom affects the patient's daily activities." 
* keyFeatures.functionalImpact.note 0..1 Annotation "Textual description of the impact" 
* keyFeatures.functionalImpact.scaleCode 0..1 code "Code for the specific scale or assessment (if any) used to determine the impact" 
* keyFeatures.functionalImpact.value 1..1 CodeableConcept "Code that represents the functional impact" 

* keyFeatures.affectiveGrade 0..1 BackboneElement "Emotional or mental impact of a symptom." 
* keyFeatures.affectiveGrade.note 0..1 Annotation "Textual description of the grade" 
* keyFeatures.affectiveGrade.value 1..1 CodeableConcept "Code that represents the affective grade" 

* keyFeatures.surroundingEvents 0..1 BackboneElement "Events or circumstances related to symptom onset or intensity." 

* keyFeatures.surroundingEvents.triggerOrExacerbatingFactors 0..* BackboneElement "" "Patient reported actions, conditions, events, physical objects or other factors that initiate or worsen symptoms or the condition of interest (pain, nausea, dyspnea, dizziness, or other)."
* keyFeatures.surroundingEvents.triggerOrExacerbatingFactors.factor 1..1 CodeableConcept "Reference to the factor" 
* keyFeatures.surroundingEvents.triggerOrExacerbatingFactors.relatedMedication[x] 0..* MedicationStatement or MedicationAdministration "Medication that patient suggests/reports triggers or exacerbates the symptom"
* keyFeatures.surroundingEvents.triggerOrExacerbatingFactors.note 0..1 Annotation "Information given about actions, conditions, events, or other factors"

* keyFeatures.surroundingEvents.alleviatingFactors 0..* BackboneElement "" "Patient-reported actions, conditions, events, or other factors that decrease the symptoms or condition"
* keyFeatures.surroundingEvents.alleviatingFactors.factor 1..1 CodeableConcept "Reference to the factor" 
* keyFeatures.surroundingEvents.alleviatingFactors.note 0..1 Annotation "Information given about actions, conditions, events, or other factors"
* keyFeatures.surroundingEvents.alleviatingFactors.relatedMedication[x] 0..* MedicationStatement or MedicationAdministration "Medication that patient suggests/reports alleviating the symptom"

* keyFeatures.surroundingEvents.otherEvents 0..* CodeableConcept "Patient-reported actions that were occuring at time of symptom onset"

* timing 0..1 BackboneElement "" "Timing includes the actual or estimated date/time of onset, character of onset, how often the patient experiences the symptom, and the length of time the symptom persists."
* timing.speedOfOnset 0..1 CodeableConcept "Qualitative expression of how the patient perceived the rate of the symptom to become apparent." ""
* timing.onset[x] 0..1 dateTime or Period "Clinically relevant time or period for the symptom since first occurence." 
* timing.note 0..1 Annotation "Free text related to the observation" 
* timing.duration[x] 0..1 Duration "The length of time the symptom persists in this instance of occurence." ""

* keyFeatures.frequency[x] 0..1 Ratio or CodeableConcept "How often the patient experiences the symptom i.e. expressed as 3x/day or 2x/week." 
* clinicalCourse 0..1 CodeableConcept "Character of symptom onset." "Qualitative expression of how the patient perceived the course or duration of the symptom."
* trend 0..1 CodeableConcept "Intensity of symptom over time" "Whether a condition is improving, worsening, stable, or resolved."

* metadata 1..1 BackboneElement "Non clinical information about the symptom"
* metadata.documentationDate 1..1 dateTime "Date when symptom was documented in the system" "Date when symptom was documented in the system."
* metadata.issued 1..1 dateTime "Date/time when the current version was made available."

