Profile: SymptomObservation
Parent: Observation
Id: SymptomObservation
Description: "The Symptom observation contains all information given about a patient's symptoms.  NOTE: References to Conditions will be from the Condition.evidence element."
Title: "Symptom Observation"

* extension contains http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo named associatedSymptom 0..* MS and http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo named associatedCondition 0..* MS

* extension[associatedSymptom].valueReference only Reference(SymptomObservation)
* extension[associatedSymptom] ^short = "Other symptoms associated with this symptom"

* extension[associatedCondition].valueReference only Reference(Condition)
* extension[associatedCondition] ^short = "Conditions with some relationship to this symptom"

* status 1..1 MS
* code 1..1 MS
  * ^short = "Coded description of symptom"
* code from CommonSymptomCodes (preferred)
* subject 1..1 MS
  * ^short = "The patient who is experiencing the symptom"
* subject only Reference(Patient)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* issued MS
* performer 1..1 MS
  * ^short = "The person who is reporting the symptom information"
* performer only Reference(Patient or RelatedPerson)
* value[x] 1..1 MS
  * ^short = "Indicates whether the patient has the symptom or not"
* value[x] only CodeableConcept
* value[x] from YesNoList (required) 
* note MS
  * ^short = "Patient or caregiver description of symptom"
* bodySite MS
  * ^short = "Where the patient feels the symptom in the body"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred) 

* dataAbsentReason 0..0
* interpretation 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0

* component 0..* MS 
  * ^short = "Various information about the symptom"
  * code 1..1 MS
  * value[x] 1..1 MS
  * dataAbsentReason 0..0
  * interpretation 0..0
  * referenceRange 0..0
* component.extension contains http://hl7.org/fhir/StructureDefinition/note named text 0..1 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Different symptom component observations"
* component contains quality 0..1 MS and
                     severity 0..1 MS and
                     functionalImpact 0..* MS and
                     clinicalCourse 0..1 MS and
                     trend 0..1 MS and
                     affectiveGrade 0..1 MS and 
                     triggersOrExacerbatingFactors 0..* MS and
                     alleviatingFactors 0..* MS and
                     otherEvents 0..* MS and
                     frequency 0..1 MS and
                     speedOfOnset 0..1 MS
                     
* component[quality] ^short = "The patient's internal perception of the symptom" 
  * code = http://loinc.org#56823-8 "Problem quality or description"
  * value[x] only CodeableConcept
    * ^short = "Code that represents the symptom quality" 
  * valueCodeableConcept from http://loinc.org/vs/LL4459-5 (example)
  * extension contains AssessmentScaleInformation named scaleCode 0..1 MS
  * extension[text]
    * ^short = "Textual description of the symptom quality" 
* component[severity] ^short = "The intensity with which the patient experiences the symptom"
  * code = http://loinc.org#64750-3 "Severity of symptoms"
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://loinc.org/vs/LL1156-0 (example)
  * extension contains AssessmentScaleInformation named scaleCode 0..1 MS
  * extension[text]
    * ^short = "Textual description of the symptom severity" 
* component[functionalImpact] ^short = "How the symptom affects the patient's daily activities" 
  * code from FunctionalClassification (preferred)
    * ^short = "Code for the functional impact being described" 
  * extension contains AssessmentScaleInformation named scaleCode 0..1 MS
  * extension[text]
    * ^short = "Textual description of the impact" 
* component[clinicalCourse] ^short = "Character of symptom onset" 
  * ^comment = "Term to represent both the course and onset of a disease. Many conditions with an acute (sudden) onset also have an acute (short duration) course."
  * code = http://loinc.org#89261-2 "Clinical course"
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://loinc.org/vs/LL4997-4 (example)
  * extension contains AssessmentScaleInformation named scaleCode 0..1 MS
  * extension[text]
    * ^short = "Textual description of the clinical course of the symptom" 
* component[trend] ^short = "Intensity of symptom over time"
  * ^comment = "Whether a condition is improving, worsening, stable, or resolved."
  * code = http://loinc.org#89253-9 "Trend"
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://loinc.org/vs/LL4938-8 (example)
  * extension[text]
    * ^short = "Textual description of the symptom trend" 
* component[affectiveGrade] ^short = "Emotional or mental impact of a symptom" 
  * code = http://snomed.info/sct#279116004 "Affective response to pain"
  * value[x] only CodeableConcept
    * ^short = "Code that represents the affective grade" 
  * valueCodeableConcept from AffectiveGrade (example)
  * extension[text]
    * ^short = "Textual description of the impact of the symptom" 
* component[triggersOrExacerbatingFactors] ^short = "Patient reported actions, conditions, events, physical objects or other factors that initiate, increase or worsen symptoms"
  * code = http://loinc.org#100752-5 "Exacerbating factors - Reported"
    * ^short = "Code for the specific type of event"
  * value[x] only CodeableConcept
    * ^short = "Code or string describing the specific event" 
  * extension contains SurroundingEventMedication named relatedMedication 0..* MS
  * extension[text]
    * ^short = "Textual description of the event" 
* component[alleviatingFactors] ^short = "Patient-reported actions, conditions, events, or other factors that decrease the symptoms or condition"
  * code = http://loinc.org#100753-3 "Alleviating factors - Reported"   
    * ^short = "Code for the specific type of event"
  * value[x] only CodeableConcept
    * ^short = "Code or string describing the specific event" 
  * extension contains SurroundingEventMedication named relatedMedication 0..* MS
  * extension[text]
    * ^short = "Textual description of the event" 
* component[otherEvents] ^short = "Patient-reported actions that were occuring at time of symptom onset"
  * value[x] only CodeableConcept
  * extension[text]
    * ^short = "Textual description of the event" 
* component[frequency] ^short = "How often the patient experiences the symptom."
  * code = http://loinc.org#104156-5 "Condition frequency - Reported" 
  * value[x] only Ratio or CodeableConcept
    * ^comment = "Frequency can be expressed as either a specific time frame i.e. 3x/day or 2x/week (preferred) or bound to the LOINC code answer set 104156-5"
  * valueCodeableConcept MS
  * valueRatio MS
    * denominator.unit from http://hl7.org/fhir/ValueSet/duration-units
  * valueCodeableConcept from http://loinc.org/vs/LL6514-5 (preferred)
  * extension[text]
    * ^short = "Textual description of the reported frequency" 
* component[speedOfOnset] ^short = "The rate at which a physiological symptom became apparent."
  * code = http://loinc.org#99495-4 "Speed of condition onset" 
  * value[x] only CodeableConcept
  * valueCodeableConcept from SpeedOfOnset (preferred)
  * extension[text]
    * ^short = "Textual description of the reported speed of onset" 


Extension: AssessmentScaleInformation
Id: AssessmentScaleInformation
Title: "Assessment Scale Information"
Description: "Information about the specific scale or assessment used to determine the value.  This can be either just a code that represents the assessment scale or can be a reference to an Assessment Scale Observation."
* value[x] only CodeableConcept or Reference(AssessmentScaleObservation)
* ^context[+].type = #element
* ^context[=].expression = "Observation.component"

Extension: SurroundingEventMedication
Id: SurroundingEventMedication
Title: "Surrounding Event Medication"
Description: "Medication that when taken affecting the factor"
* value[x] only Reference
* valueReference only Reference(MedicationStatement)
* ^context[+].type = #element
* ^context[=].expression = "Observation.component"
