// Automatically generated from graphBuilder.
// Project: fhir-symptoms (id1757979348042)
// View: Initial view

Instance: cfsb1757979852206
InstanceOf: Patient
Description: "Jane Doe - shortness of breath"
Usage: #example 
* name.given = "Jane"
* name.family = "Doe"
* gender = #female
* birthDate = "1965-01-01"


Instance: cfsb1757981235304
InstanceOf: Observation
Description: "Shortness of breath"
Usage: #example
//add supporting info of Condition (type 2 diabetes mellitus and hypertension)
* status = #final
* category = SymptomTemporary#symptom
* category.text = "Symptom"
* code = http://loinc.org#75325-1
* code.text = "Symptom"
// Reference to Patient: Jane Doe - shortness of breath
* subject = Reference(cfsb1757979852206)
* effectivePeriod.start = "2025-09-23T13:22:17.239+02:00"
* effectivePeriod.end = "2025-09-23T13:42:17.239+02:00"
* issued = "2025-09-15T13:28:17.239+02:00"
 // Reference to Patient: Jane Doe - shortness of breath
* performer = Reference(cfsb1757979852206)
* valueCodeableConcept = http://snomed.info/sct#267036007
* valueCodeableConcept.text = "Dyspnea (finding)"
* note.authorString = "Reference(cfsb1757979852206)"
* note.time = "2025-09-15"
* note.text = "For the last six weeks, I have been getting so winded when I have been walking up stairs."
* bodySite = http://snomed.info/sct#39607008 "Lung structure"

* component.code = http://loinc.org#56823-8 
* component.code.text = "Problem quality or description"
* component.valueCodeableConcept = http://loinc.org/vs/#LL4459-5
* component.valueCodeableConcept.text = "LA24760-3"

* component[1].code = http://loinc.org#89253-9 "Trend"
* component[1].code.text = "Trend"
* component[1].valueCodeableConcept = http://loinc.org/#LA9041-0
* component[1].valueCodeableConcept.text = "Resolved"

* component[2].code = http://loinc.org#100752-5
* component[2].code.text = "Exacerbating factors - Reported"
* component[2].valueCodeableConcept = http://loinc.org#LA33517-6
* component[2].valueCodeableConcept.text = "Excercising"

* component[3].code = http://loinc.org#100753-3
* component[3].code.text = "Alleviating factors - Reported"
* component[3].valueCodeableConcept = http://loinc.org#LA33524-2
* component[3].valueCodeableConcept.text = "Resting"

* component[4].code = http://loinc.org#104156-5
* component[4].code.text = "Condition frequency - Reported"
* component[4].valueCodeableConcept = http://loinc.org#LA24760-3
* component[4].valueCodeableConcept.text = "Intermittent"



Instance: cfsb1758721687263
InstanceOf: Observation
Description: "No cough"
Usage: #example
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo"
* extension[=].valueCodeableConcept = Reference(cfsb1757979852206)
* status = #final
//symptom - cough - no
// Reference to Patient: Jane Doe - shortness of breath
* subject = Reference(cfsb1757979852206)



Instance: cfsb1758722421546
InstanceOf: Observation
Description: "no fever"
Usage: #example 
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo"
* extension[=].valueCodeableConcept = Reference(cfsb1757979852206)
* status = #final
//symptom - fever - no
// Reference to Patient: Jane Doe - shortness of breath
* subject = Reference(cfsb1757979852206)


Instance: cfsb1759361672597
InstanceOf: Observation
Description: "Absence of fever"
Usage: #example 
* status = #final
* code = SymptomTemporary#symptomAbsent
* code.text = "Symptom Absent"

// Reference to Patient: Jane Doe - shortness of breath
* subject = Reference(cfsb1757979852206)
 // Reference to Patient: Jane Doe - shortness of breath
* performer = Reference(cfsb1757979852206)

* valueCodeableConcept = http://snomed.info/sct#386661006
* valueCodeableConcept.text = "Fever (finding)"


