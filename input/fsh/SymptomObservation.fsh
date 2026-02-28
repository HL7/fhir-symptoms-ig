Profile: SymptomObservation
Parent: Observation
Id: SymptomObservation
Description: "Used to record the presence of a Symptom as reported by the patient or a patient's caregiver.  The Symptom observation contains all information given about a patient's symptom."
Title: "Symptom Observation"

* extension contains http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo named associatedSymptomOrCondition 0..*
* extension[associatedSymptomOrCondition].valueReference only Reference(SymptomObservation or SymptomAbsentObservation or Condition)
  * insert ShouldSupport([[Other symptoms or conditions that are associated with this symptom]])

* status 1..1 MS
* category 1..* MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Send a category of symptoms"
* category contains symptomCode 1..1 MS
* category[symptomCode] = SymptomTemporary#symptom
* code 1..1 MS
* code = http://loinc.org#75325-1 "Symptom"
* subject 1..1 MS
  * ^short = "The patient who is experiencing the symptom"
* subject only Reference(Patient)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* issued 
  * insert ShouldSupport([[Instant when this version of the symptom information was recorded]])
* performer 1..1 MS
  * ^short = "The person who is reporting the symptom information"
* performer only Reference(Patient or RelatedPerson)
* value[x] 1..1 MS
  * ^short = "Coded description of symptom"
* value[x] only CodeableConcept
* value[x] from CommonSymptomCodes (preferred)
  * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[=].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = http://hl7.org/fhir/tools/CodeSystem/additional-binding-purpose#maximum
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/ValueSet/clinical-findings"
  * ^binding.extension[=].extension[+].url = "key"
  * ^binding.extension[=].extension[=].valueId = "MaxSymptoms"
* note
  * insert ShouldSupport([[Patient or caregiver description of symptom]])
* bodySite MS
  * ^short = "Where the patient feels the symptom in the body"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred) 

* dataAbsentReason 0..0
* interpretation 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0

* component 0..* 
  * insert ShouldSupport([[Various information about the symptom]])
  * code 1..1 
  * value[x] 1..1 
  * dataAbsentReason 0..0
  * interpretation 0..0
  * referenceRange 0..0
* component.extension contains http://hl7.org/fhir/StructureDefinition/note named text 0..1
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Different symptom component observations"
* component contains quality 0..1 and
                     severity 0..1 and
                     impact 0..* and
                     clinicalCourse 0..1 and
                     trend 0..1 and 
                     triggersOrExacerbatingFactors 0..* and
                     alleviatingFactors 0..* and
                     otherEvents 0..* and
                     frequency 0..1 and
                     speedOfOnset 0..1
                     
* component[quality] 
  * insert ShouldSupport([[The patient's internal perception of the symptom]])
  * code = http://loinc.org#56823-8 "Problem quality or description"
  * value[x] only CodeableConcept
    * ^short = "Code that represents the symptom quality" 
  * valueCodeableConcept from QualityCodes (preferred) 
    * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
    * ^binding.extension[=].extension[+].url = "purpose"
    * ^binding.extension[=].extension[=].valueCode = http://hl7.org/fhir/tools/CodeSystem/additional-binding-purpose#preferred
    * ^binding.extension[=].extension[+].url = "valueSet"
    * ^binding.extension[=].extension[=].valueCanonical = "http://loinc.org/vs/LL4459-5"
    * ^binding.extension[=].extension[+].url = "documentation"
    * ^binding.extension[=].extension[=].valueMarkdown = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "shortDoco"
    * ^binding.extension[=].extension[=].valueString = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "key"
    * ^binding.extension[=].extension[=].valueId = "LOINCQuality"
  * extension contains AssessmentScaleInformation named scaleCode 0..1
  * extension[text]
    * ^short = "Textual description of the symptom quality" 
* component[severity] 
  * insert ShouldSupport([[The intensity with which the patient experiences the symptom]])
  * code = http://loinc.org#64750-3 "Severity of symptoms"
  * value[x] only CodeableConcept
  * valueCodeableConcept from SeverityCodes (preferred) 
    * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
    * ^binding.extension[=].extension[+].url = "purpose"
    * ^binding.extension[=].extension[=].valueCode = http://hl7.org/fhir/tools/CodeSystem/additional-binding-purpose#preferred
    * ^binding.extension[=].extension[+].url = "valueSet"
    * ^binding.extension[=].extension[=].valueCanonical = "http://loinc.org/vs/LL1156-0"
    * ^binding.extension[=].extension[+].url = "documentation"
    * ^binding.extension[=].extension[=].valueMarkdown = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "shortDoco"
    * ^binding.extension[=].extension[=].valueString = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "key"
    * ^binding.extension[=].extension[=].valueId = "LOINCSeverity"
  * extension contains AssessmentScaleInformation named scaleCode 0..1
  * extension[text]
    * ^short = "Textual description of the symptom severity" 
* component[impact] 
  * insert ShouldSupport([[How the symptom is affecting the patient, either emotionally, mentally, or physically]])
  * code from FunctionalClassification (required)
    * ^short = "Code for the impact being described" 
  * value[x] only CodeableConcept
    * ^short = "Code that represents the affective grade" 
  * valueCodeableConcept from AffectiveGrade (preferred)
  * extension contains FunctionalAssessment named functionalAssessment 0..1
  * extension[text]
    * ^short = "Textual description of the impact"
* component[clinicalCourse] 
  * insert ShouldSupport([[Character of symptom onset]])
  * ^comment = "Term to represent both the course and onset of a disease. Many conditions with an acute (sudden) onset also have an acute (short duration) course."
  * code = http://loinc.org#89261-2 "Clinical course"
  * value[x] only CodeableConcept
  * valueCodeableConcept from ClinicalCourseCodes (preferred) 
    * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
    * ^binding.extension[=].extension[+].url = "purpose"
    * ^binding.extension[=].extension[=].valueCode = http://hl7.org/fhir/tools/CodeSystem/additional-binding-purpose#preferred
    * ^binding.extension[=].extension[+].url = "valueSet"
    * ^binding.extension[=].extension[=].valueCanonical = "http://loinc.org/vs/LL4997-4"
    * ^binding.extension[=].extension[+].url = "documentation"
    * ^binding.extension[=].extension[=].valueMarkdown = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "shortDoco"
    * ^binding.extension[=].extension[=].valueString = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "key"
    * ^binding.extension[=].extension[=].valueId = "LOINCClinicalCourse"
  * extension[text]
    * ^short = "Textual description of the clinical course of the symptom" 
* component[trend] 
  * insert ShouldSupport([[Whether a condition is improving, worsening, stable, or resolved.]])
  * code = http://loinc.org#89253-9 "Trend"
  * value[x] only CodeableConcept
  * valueCodeableConcept from TrendCodes (preferred) 
    * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
    * ^binding.extension[=].extension[+].url = "purpose"
    * ^binding.extension[=].extension[=].valueCode = http://hl7.org/fhir/tools/CodeSystem/additional-binding-purpose#preferred
    * ^binding.extension[=].extension[+].url = "valueSet"
    * ^binding.extension[=].extension[=].valueCanonical = "http://loinc.org/vs/LL4938-8"
    * ^binding.extension[=].extension[+].url = "documentation"
    * ^binding.extension[=].extension[=].valueMarkdown = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "shortDoco"
    * ^binding.extension[=].extension[=].valueString = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "key"
    * ^binding.extension[=].extension[=].valueId = "LOINCTrend"
  * extension[text]
    * ^short = "Textual description of the symptom trend" 
* component[triggersOrExacerbatingFactors] 
  * insert ShouldSupport([[Patient reported actions, conditions, events, physical objects or other factors that initiate, increase or worsen symptoms]])
  * code = http://loinc.org#100752-5 "Exacerbating factors - Reported"
    * ^short = "Code for the specific type of event"
  * value[x] only CodeableConcept
    * ^short = "Code or string describing the specific event" 
  * valueCodeableConcept from TriggersOrExacerbatingFactorCodes (preferred) 
    * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
    * ^binding.extension[=].extension[+].url = "purpose"
    * ^binding.extension[=].extension[=].valueCode = http://hl7.org/fhir/tools/CodeSystem/additional-binding-purpose#preferred
    * ^binding.extension[=].extension[+].url = "valueSet"
    * ^binding.extension[=].extension[=].valueCanonical = "http://loinc.org/vs/LL6278-7"
    * ^binding.extension[=].extension[+].url = "documentation"
    * ^binding.extension[=].extension[=].valueMarkdown = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "shortDoco"
    * ^binding.extension[=].extension[=].valueString = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "key"
    * ^binding.extension[=].extension[=].valueId = "LOINCExacerbating"
  * extension contains SurroundingEventMedication named relatedMedication 0..*
  * extension[text]
    * ^short = "Textual description of the event" 
* component[alleviatingFactors] 
  * insert ShouldSupport([[Patient-reported actions, conditions, events, or other factors that decrease the symptoms or condition]])
  * code = http://loinc.org#100753-3 "Alleviating factors - Reported"   
    * ^short = "Code for the specific type of event"
  * value[x] only CodeableConcept
    * ^short = "Code or string describing the specific event" 
  * valueCodeableConcept from AlleviatingFactorCodes (preferred) 
    * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
    * ^binding.extension[=].extension[+].url = "purpose"
    * ^binding.extension[=].extension[=].valueCode = http://hl7.org/fhir/tools/CodeSystem/additional-binding-purpose#preferred
    * ^binding.extension[=].extension[+].url = "valueSet"
    * ^binding.extension[=].extension[=].valueCanonical = "http://loinc.org/vs/LL6279-5"
    * ^binding.extension[=].extension[+].url = "documentation"
    * ^binding.extension[=].extension[=].valueMarkdown = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "shortDoco"
    * ^binding.extension[=].extension[=].valueString = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "key"
    * ^binding.extension[=].extension[=].valueId = "LOINCAlleviating"
  * extension contains SurroundingEventMedication named relatedMedication 0..*
  * extension[text]
    * ^short = "Textual description of the event" 
* component[otherEvents] 
  * insert ShouldSupport([[Patient-reported actions that were occuring at time of symptom onset]])
  * code = SymptomTemporary#OTHEREVENT
  * value[x] only CodeableConcept
    * ^short = "Code or string describing the specific event"
  * valueCodeableConcept from OtherEventCodes (example)
  * extension[text]
    * ^short = "Textual description of the event" 
* component[frequency] 
  * insert ShouldSupport([[How often the patient experiences the symptom.]])
  * code = http://loinc.org#104156-5 "Condition frequency - Reported" 
  * value[x] only Ratio or CodeableConcept
    * ^comment = "Frequency can be expressed as either a specific time frame i.e. 3x/day or 2x/week (preferred) or bound to the LOINC code answer set 104156-5"
  * valueCodeableConcept from FrequencyCodes (preferred) 
    * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
    * ^binding.extension[=].extension[+].url = "purpose"
    * ^binding.extension[=].extension[=].valueCode = http://hl7.org/fhir/tools/CodeSystem/additional-binding-purpose#preferred
    * ^binding.extension[=].extension[+].url = "valueSet"
    * ^binding.extension[=].extension[=].valueCanonical = "http://loinc.org/vs/LL6514-5"
    * ^binding.extension[=].extension[+].url = "documentation"
    * ^binding.extension[=].extension[=].valueMarkdown = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "shortDoco"
    * ^binding.extension[=].extension[=].valueString = "LOINC binding when SNOMED is unavailable"
    * ^binding.extension[=].extension[+].url = "key"
    * ^binding.extension[=].extension[=].valueId = "LOINCFrequency"
  * valueRatio
    * denominator.unit from http://hl7.org/fhir/ValueSet/duration-units
  * extension[text]
    * ^short = "Textual description of the reported frequency" 
* component[speedOfOnset] 
  * insert ShouldSupport([[Qualitative expression of how the patient perceived the rate of the symptom to become apparent.]])
  * code = http://loinc.org#99495-4 "Speed of condition onset" 
  * value[x] only CodeableConcept
  * valueCodeableConcept from SpeedOfOnset (preferred)
  * extension[text]
    * ^short = "Textual description of the reported speed of onset" 

Extension: AssessmentScaleInformation
Id: AssessmentScaleInformation
Title: "Assessment Scale Information"
Description: "Information about the specific scale or assessment used to determine the value.  This can be either just a code that represents the assessment scale or can be a reference to an Assessment Scale Collection."
* value[x] only CodeableConcept or Reference(AssessmentScaleCollection)
* ^context[+].type = #element
* ^context[=].expression = "Observation.component"

Extension: FunctionalAssessment
Id: FunctionalAssessment
Title: "Functional Assessment"
Description: "Reference to a complete functional assessment collection."
* value[x] only Reference(FunctionalAssessmentCollection)
* ^context[+].type = #element
* ^context[=].expression = "Observation.component"

Extension: SurroundingEventMedication
Id: SurroundingEventMedication
Title: "Surrounding Event Medication"
Description: "Medication that when taken affects the symptom"
* value[x] only Reference
* valueReference only Reference(MedicationStatement or MedicationAdministration)
* ^context[+].type = #element
* ^context[=].expression = "Observation.component"

RuleSet: ShouldSupport(label)
* ^short = "\ud835\udde6\ud835\udddb\ud835\udde2\ud835\udde8\ud835\udddf\ud835\uddd7\u0020\ud835\udde6\ud835\udde8\ud835\udde3\ud835\udde3\ud835\udde2\ud835\udde5\ud835\udde7 {label}"
