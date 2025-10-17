Instance: JohnDoe
InstanceOf: Patient
Description: "John Doe - dizziness"
Usage: #example
 
* name.given = "John"
* name.family = "Doe"
* gender = #male
* birthDate = "1953-02-21"

Instance: DizzinessSymptom
InstanceOf: SymptomObservation
Description: "Dizziness"
Usage: #example
 
* extension[associatedSymptom].valueReference = Reference(HearingLossSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
 // Reference to Patient: John Doe - dizziness
* subject = Reference(JohnDoe)
* effectivePeriod.start = "2025-09-25T13:22:17.239+02:00"
* effectivePeriod.end = "2025-10-16T13:42:17.239+02:00"
* issued = "2025-10-16T13:42:17.239+02:00"
 // Reference to Patient: John Doe - dizziness
* performer = Reference(JohnDoe)

* valueCodeableConcept = http://snomed.info/sct#404640003
* valueCodeableConcept.text = "Dizziness (finding)"
* bodySite = http://snomed.info/sct#69536005 "Head structure"

* component[severity].valueCodeableConcept = http://snomed.info/sct#371923003
* component[trend].valueCodeableConcept = http://snomed.info/sct#35105006
* component[triggersOrExacerbatingFactors].valueCodeableConcept = http://snomed.info/sct#258148007
* component[triggersOrExacerbatingFactors].valueCodeableConcept = http://snomed.info/sct#303385001   
* component[alleviatingFactors].valueCodeableConcept = http://snomed.info/sct#33586001   
* component[alleviatingFactors].valueCodeableConcept = http://snomed.info/sct#128975004
* component[frequency].valueCodeableConcept = http://snomed.info/sct#70232002
* component[otherEvents].valueCodeableConcept = http://snomed.info/sct#128975004
//* component[otherEvents].[text] = "Not alleviated by rest"

Instance: HearingLossSymptom
InstanceOf: SymptomObservation
Description: "Hearing Loss"
Usage: #example
 
* extension[associatedSymptom].valueReference = Reference(DizzinessSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
 // Reference to Patient: John Doe - dizziness
* subject = Reference(JohnDoe)
* effectivePeriod.start = "2025-04-01T13:22:17.239+02:00"
* effectivePeriod.end = "2025-10-16T13:42:17.239+02:00"
* issued = "2025-10-16T13:42:17.239+02:00"
 // Reference to Patient: John Doe - dizziness
* performer = Reference(JohnDoe)

* valueCodeableConcept = http://snomed.info/sct#14230001000004101 
* valueCodeableConcept.text = "Perception of hearing loss (finding)"
* bodySite = http://snomed.info/sct#69536005 "Head structure"

* component[severity].valueCodeableConcept = http://snomed.info/sct#371923003
* component[trend].valueCodeableConcept = http://snomed.info/sct#35105006
* component[frequency].valueCodeableConcept = http://snomed.info/sct#255238004
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#61751001


Instance: FaintingSymptomAbsence
InstanceOf: SymptomAbsentObservation
Description: "No fainting"
Usage: #example 
* extension[associatedSymptom].valueReference = Reference(DizzinessSymptom)
* status = #final
* effectivePeriod.start = "2025-09-25T13:22:17.239+02:00"
* effectivePeriod.end = "2025-10-16T13:42:17.239+02:00"
* issued = "2025-10-16T13:42:17.239+02:00"
// Reference to Patient: Jane Doe - shortness of breath
* subject = Reference(JohnDoe)
 // Reference to Patient: Jane Doe - shortness of breath
* performer = Reference(JohnDoe)
* valueCodeableConcept = http://snomed.info/sct#271594007	
* valueCodeableConcept.text = "Syncope attack"

Instance: UnconsciousnessSymptomAbsence
InstanceOf: SymptomAbsentObservation
Description: "No loss of consciousness"
Usage: #example 
* extension[associatedSymptom].valueReference = Reference(DizzinessSymptom)
* status = #final
* effectivePeriod.start = "2025-09-25T13:22:17.239+02:00"
* effectivePeriod.end = "2025-10-16T13:42:17.239+02:00"
* issued = "2025-10-16T13:42:17.239+02:00"
// Reference to Patient: Jane Doe - shortness of breath
* subject = Reference(JohnDoe)
 // Reference to Patient: Jane Doe - shortness of breath
* performer = Reference(JohnDoe)
* valueCodeableConcept = http://snomed.info/sct#418107008 	
* valueCodeableConcept.text = "Unconscious (finding)"

Instance: NaueaSymptomAbsence
InstanceOf: SymptomAbsentObservation
Description: "Absense of nausea"
Usage: #example 
* extension[associatedSymptom].valueReference = Reference(DizzinessSymptom)
* status = #final
* effectivePeriod.start = "2025-09-25T13:22:17.239+02:00"
* effectivePeriod.end = "2025-10-16T13:42:17.239+02:00"
* issued = "2025-10-16T13:42:17.239+02:00"
// Reference to Patient: Jane Doe - shortness of breath
* subject = Reference(JohnDoe)
 // Reference to Patient: Jane Doe - shortness of breath
* performer = Reference(JohnDoe)
* valueCodeableConcept = http://snomed.info/sct#422587007	
* valueCodeableConcept.text = "Nausea (finding)"