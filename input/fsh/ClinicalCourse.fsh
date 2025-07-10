Profile: ClinicalCourseObservation
Parent: Observation
Id: ClinicalCourseObservation
Description: "The character of symptom onset."
Title: "Clinical Course Observation"

* code = http://loinc.org#89253-9 "Trend"
* focus 1..1 MS
* focus only Reference(SymptomObservation)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from http://loinc.org/vs/LL4997-4 (preferred)


