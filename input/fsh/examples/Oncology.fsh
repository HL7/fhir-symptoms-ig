Instance: MrDoe
InstanceOf: Patient
Description: "Mr. Doe - Oncology"
Usage: #example
 
* name.prefix = "Mr."
* name.family = "Doe"
* gender = #male

Instance: AdmissionsPerson
InstanceOf: Practitioner
Description: "Admission to Hospital"
Usage: #example
 
* name.given = "Ima"
* name.family = "Doctor"

Instance: ConstipationSymptom
InstanceOf: SymptomObservation
Description: "Constipation"
Usage: #example
 
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalDiscomfortSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(WeightLossSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(MrDoe)
* effectivePeriod.start = "2025-09-01T13:22:17.239+02:00"
* issued = "2025-11-10T13:42:17.239+02:00"
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#14760008 	
* valueCodeableConcept.text = "Constipation (finding)"
* bodySite = http://snomed.info/sct#113276009 "Intestinal structure (body structure)"

* component[severity].valueCodeableConcept = http://snomed.info/sct#442452003
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009

Instance: WeightLossSymptom
InstanceOf: SymptomObservation
Description: "Constipation"
Usage: #example
 
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalDiscomfortSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ConstipationSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(MrDoe)
* effectivePeriod.start = "2025-09-01T13:22:17.239+02:00"
* issued = "2025-11-10T13:42:17.239+02:00"
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#14760008 	
* valueCodeableConcept.text = "Constipation (finding)"
* bodySite = http://snomed.info/sct#113276009 "Intestinal structure (body structure)"

* component[functionalImpact].code = b4552
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009

Instance: AbdominalDiscomfortSymptom
InstanceOf: SymptomObservation
Description: "Abdominal Discomfort"
Usage: #example
 
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ConstipationSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(WeightLossSymptom)
* status = #final
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(MrDoe)
* effectivePeriod.start = "2025-09-01T13:22:17.239+02:00"
* issued = "2025-11-10T13:42:17.239+02:00"
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#43364001 
* valueCodeableConcept.text = "Abdominal discomfort (finding)"
* bodySite = http://snomed.info/sct#113276009 "Intestinal structure (body structure)"

* component[quality].valueCodeableConcept = http://snomed.info/sct#279093005
* component[severity].valueCodeableConcept = http://snomed.info/sct#442452003
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 
* component[frequency].valueRatio.numerator = 1
* component[frequency].valueRatio.denominator.value = 24
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009

Instance: AbdominalPainSymptom
InstanceOf: SymptomObservation
Description: "Abdominal pain"
Usage: #example
 
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ConstipationSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalDiscomfortSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(WeightLossSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(MrDoe)
* effectivePeriod.start = "2025-09-01T13:22:17.239+02:00"
* issued = "2025-11-10T13:42:17.239+02:00"
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#21522001
* valueCodeableConcept.text = "Abdominal pain (finding)"
* bodySite = http://snomed.info/sct#113276009 "Intestinal structure (body structure)"

* component[quality].valueCodeableConcept = http://snomed.info/sct#279093005
* component[severity].extension[scaleCode].valueReference = Reference(PainAssessment)
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009

Instance: RectalBleedingSymptomAbsence
InstanceOf: SymptomAbsentObservation
Description: "Absence of rectal bleeding"
Usage: #example 
* extension[associatedSymptomOrCondition].valueReference = Reference(ConstipationSymptom)
* extension[associatedSymptomOrCondition].valueReference = Reference(AbdominalDiscomfortSymptom)
* status = #final
* effectivePeriod.start = "2025-09-23T13:22:17.239+02:00"
* effectivePeriod.end = "2025-09-23T13:42:17.239+02:00"
* issued = "2025-09-15T13:28:17.239+02:00"
* subject = Reference(MrDoe)
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#414992000 
* valueCodeableConcept.text = "Painless rectal bleeding (finding)"

Instance: PainAssessmentCollection
InstanceOf: AssessmentScaleCollection
Description: "Collection of rating of abdominal cramping pain"
Usage: #example
* status = #final
* category[survey].text = "Assessment Pain Scale"
* code = 
* subject = Reference(MrDoe)
* effectiveDateTime = "2025-11-10T13:28:17.239+02:00"
* performer = Reference(AdmissionsPerson)
* hasMember = Reference(AssessmentScaleObservation)

Instance: PainAssessmentScale
InstanceOf: AssessmentScaleObservation
Description: "Rating of abdominal cramping pain"
Usage: #example
* status = #final
* category[survey].text = "Assessment Pain Scale"
* code = 
* subject = Reference(MrDoe)
* effectiveDateTime = "2025-11-10T13:28:17.239+02:00"
* valueRatio.numerator = 4
* valueRatio.denominator = 10