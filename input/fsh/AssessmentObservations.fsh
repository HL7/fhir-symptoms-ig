Profile: AssessmentScaleCollection
Parent: Observation
Id: AssessmentScaleCollection
Description: "A point in time collection of observations for a patient. This profile is used for exchanging a set of observation data collected through the use of a structured resource (e.g., assessment tool, instrument, or screen) with multiple questions. NOTE: This profile is a universal flavour of the PACIO PFE Personal Functioning and Engagement Collection Observation profile."
Title: "Assessment Scale Collection Observation"

* status 1..1 MS
* category 1..* MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains survey 1..1 MS

* category[survey] = http://terminology.hl7.org/CodeSystem/observation-category#survey

* code 1..1 MS
  * ^short = "Code representing the specific assessment survey"
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* issued MS
* performer 1..1 MS
  * ^short = "The person who conducted the assessment survey"

* value[x] 0..0
* component 0..0

* derivedFrom MS
* derivedFrom only Reference(QuestionnaireResponse or Observation)
  * ^short = "Should point to the QuestionnaireResponse that this observation is derived from"

* hasMember 1..* MS
* hasMember only Reference(AssessmentScaleObservation)


Profile: FunctionalAssessmentCollection
Parent: AssessmentScaleCollection
Id: FunctionalAssessmentCollection
Description: "A collection of observations related to a functional assessment of a patient.  This profile is used for exchanging a set of functional data."
Title: "Functional Assessment Collection"

* category contains functionalDomain 0..*
* category[functionalDomain] from FunctionalClassification (required)

* hasMember only Reference(FunctionalAssessmentObservation)

Profile: AssessmentScaleObservation
Parent: Observation
Id: AssessmentScaleObservation
Description:  "An exchange of post-acute care observation for a patient. This profile is used for exchanging an observation for a single question generally included in a structured resource (e.g., assessment tool, instrument, or screen).  NOTE: This profile is a universal flavour of the PACIO PFE Personal Functioning and Engagement Single Observation profile."
Title: "Assessment Scale Single Observation"

* status 1..1 MS
* category 1..* MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains 
	survey 1..1 MS
    
* category[survey] = http://terminology.hl7.org/CodeSystem/observation-category#survey

* code 1..1 MS
  * ^short = "Code representing the specific assessment survey"
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] 1..1 MS
* effective[x] only dateTime
* issued MS
* performer 1..1 MS
  * ^short = "The person who conducted the assessment survey"
* value[x] 1..1 MS
* derivedFrom only Reference(QuestionnaireResponse or Observation)
  * ^short = "Should point to the QuestionnaireResponse that this observation is derived from"
* hasMember 0..0


Profile: FunctionalAssessmentObservation
Parent: AssessmentScaleObservation
Id: FunctionalAssessmentObservation
Description: "A single observation related to a functional assessment of a patient.  This profile is used for exchanging an observation for a single question."
Title: "Functional Assessment Single Observation"

* category contains functionalDomain 0..*
* category[functionalDomain] from FunctionalClassification (required)
