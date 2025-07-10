Profile: TrendObservation
Parent: Observation
Id: TrendObservation
Description: "The intensity of symptom over time."
Title: "Trend Observation"

* code = http://loinc.org#89253-9 "Trend"
* focus 1..1 MS
* focus only Reference(SymptomObservation)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from http://loinc.org/vs/LL4938-8 (preferred)
