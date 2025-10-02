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
//add supporting info of Condition (type 2 diabetes mellitus and hypertension)
* status = #final
// Reference to Patient: Jane Doe - shortness of breath
* subject = Reference(JaneDoe)
* effectivePeriod.start = "2025-09-23T13:22:17.239+02:00"
* effectivePeriod.end = "2025-09-23T13:42:17.239+02:00"
* issued = "2025-09-15T13:28:17.239+02:00"
 // Reference to Patient: Jane Doe - shortness of breath
* performer = Reference(JaneDoe)
* valueCodeableConcept = http://snomed.info/sct#267036007
* valueCodeableConcept.text = "Dyspnea (finding)"
* note.authorString = "Reference(JaneDoe)"
* note.time = "2025-09-15"
* note.text = "For the last six weeks, I have been getting so winded when I have been walking up stairs."
* bodySite = http://snomed.info/sct#39607008 "Lung structure"

* component[trend].valueCodeableConcept = http://loinc.org#LA6751-7
* component[triggersOrExacerbatingFactors].valueCodeableConcept = http://loinc.org#LA33517-6
* component[alleviatingFactors].valueCodeableConcept = http://loinc.org#LA33524-2
* component[frequency].valueCodeableConcept = http://loinc.org#LA24760-3

Instance: FeverSymptomAbsence
InstanceOf: SymptomAbsentObservation
Description: "Absence of fever"
Usage: #example 
* status = #final
* effectivePeriod.start = "2025-09-23T13:22:17.239+02:00"
* effectivePeriod.end = "2025-09-23T13:42:17.239+02:00"
* issued = "2025-09-15T13:28:17.239+02:00"
// Reference to Patient: Jane Doe - shortness of breath
* subject = Reference(JaneDoe)
 // Reference to Patient: Jane Doe - shortness of breath
* performer = Reference(JaneDoe)

* valueCodeableConcept = http://snomed.info/sct#386661006
* valueCodeableConcept.text = "Fever (finding)"


