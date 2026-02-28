// Automatically generated from graphBuilder.
// Project: fhir-symptoms (id1757979348042)
// View: Initial view

Instance: JaneDoe
InstanceOf: Patient
Description: "Jane Doe - shortness of breath"
Usage: #example 
* name.given = "Jane"
* name.family = "Doe"
* gender = #female
* birthDate = "1965-01-01"

Instance: ShortnessOfBreathSymptom
InstanceOf: SymptomObservation
Description: "Shortness of breath"
Usage: #example
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ChestPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(Type2DiabetesMellitus)
* status = #final
* subject = Reference(JaneDoe)
* effectivePeriod.start = "2025-09-23T13:22:00.239+02:00"
* effectivePeriod.end = "2025-09-23T13:27:00.239+02:00"
* issued = "2025-09-15T13:28:17.239+02:00"
* performer = Reference(JaneDoe)
* valueCodeableConcept = http://snomed.info/sct#267036007
* valueCodeableConcept.text = "Dyspnea (finding)"
* note.authorString = "Reference(JaneDoe)"
* note.time = "2025-09-15"
* note.text = "For the last six weeks, I have been getting so winded when I have been walking up stairs."
* bodySite = http://snomed.info/sct#39607008 "Lung structure"

* component[severity].valueCodeableConcept = http://snomed.info/sct#6736007 "Moderate (severity modifier) (qualifier value)"
* component[triggersOrExacerbatingFactors].valueCodeableConcept = http://snomed.info/sct#226029000 "Exercises (regime/therapy)"
* component[alleviatingFactors].valueCodeableConcept = http://snomed.info/sct#128975004 "Resting state (finding)"
* component[frequency].valueCodeableConcept = http://snomed.info/sct#70232002 "Frequent (qualifier value)"
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009 "Sudden onset (qualifier value)"


Instance: ChestPainSymptom
InstanceOf: SymptomObservation
Description: "Chest pain"
Usage: #example
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ShortnessOfBreathSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(Type2DiabetesMellitus)
* status = #final
* subject = Reference(JaneDoe)
* effectivePeriod.start = "2025-09-23T13:22:00.239+02:00"
* effectivePeriod.end = "2025-09-23T13:42:00.239+02:00"
* issued = "2025-09-15T13:28:17.239+02:00"
* performer = Reference(JaneDoe)
* valueCodeableConcept = http://snomed.info/sct#22253000 
* valueCodeableConcept.text = "Pain"
* bodySite = http://snomed.info/sct#51185008 "Thoracic structure (body structure)"

* component[quality].valueCodeableConcept = http://snomed.info/sct#279098001 "Crushing pain (finding)"
* component[severity].valueCodeableConcept = http://snomed.info/sct#6736007 "Moderate (severity modifier) (qualifier value)"
* component[triggersOrExacerbatingFactors].valueCodeableConcept = http://snomed.info/sct#226029000 "Exercises (regime/therapy)"
* component[alleviatingFactors].valueCodeableConcept = http://snomed.info/sct#128975004 "Resting state (finding)"
* component[frequency].valueCodeableConcept = http://snomed.info/sct#307486002 "Single event (qualifier value)"
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009 "Sudden onset (qualifier value)"


Instance: FeverSymptomAbsence
InstanceOf: SymptomAbsentObservation
Description: "Absence of fever"
Usage: #example 
* extension[associatedSymptomOrCondition].valueReference = Reference(ShortnessOfBreathSymptom)
* status = #final
* effectivePeriod.start = "2025-09-23T13:22:17.239+02:00"
* effectivePeriod.end = "2025-09-23T13:42:17.239+02:00"
* issued = "2025-09-15T13:28:17.239+02:00"
* subject = Reference(JaneDoe)
* performer = Reference(JaneDoe)

* valueCodeableConcept = http://snomed.info/sct#386661006
* valueCodeableConcept.text = "Fever (finding)"

Instance: ChillSymptomAbsence
InstanceOf: SymptomAbsentObservation
Description: "Absence of chills"
Usage: #example 
* extension[associatedSymptomOrCondition].valueReference = Reference(ShortnessOfBreathSymptom)
* status = #final
* effectivePeriod.start = "2025-09-23T13:22:17.239+02:00"
* effectivePeriod.end = "2025-09-23T13:42:17.239+02:00"
* issued = "2025-09-15T13:28:17.239+02:00"
* subject = Reference(JaneDoe)
* performer = Reference(JaneDoe)

* valueCodeableConcept = http://snomed.info/sct#43724002 
* valueCodeableConcept.text = "Chill (finding)"

Instance: Type2DiabetesMellitus
InstanceOf: Condition
Description: "Type 2 Diabetes"
Usage: #example

* code = http://snomed.info/sct#44054006 "Type 2 diabetes mellitus"
* subject = Reference(JaneDoe)