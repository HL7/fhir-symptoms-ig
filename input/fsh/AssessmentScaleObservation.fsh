Profile: AssessmentScaleObservation
Parent: Observation
Id: AssessmentScaleObservation
Description: "The Assessment Scale observation contains all information about an assessment scale, its questions, and its answers."
Title: "Assessment Scale Observation"

* status 1..1 MS
* category 1..1 MS
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code 1..1 MS
  * ^short = "Code representing the specific assessment survey"
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] 1..1 MS
* effective[x] only dateTime
* issued MS
* performer 1..1 MS
  * ^short = "The person who conducted the assessment survey"
* component 0..* MS 
