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
* extension[associatedSymptomOrCondition][+].valueReference = Reference(DecreasedAppetiteSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(MrDoe)
* effectivePeriod.start = "2025-09-01T13:22:17.239+02:00"
* issued = "2025-11-10T13:42:17.239+02:00"
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#14760008 	
* valueCodeableConcept.text = "Constipation (finding)"
* bodySite = http://snomed.info/sct#113276009 "Intestinal structure (body structure)"

* component[severity].valueCodeableConcept = http://snomed.info/sct#442452003 "Life threatening severity (qualifier value)"
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002 "Acute fulminating (qualifier value)"
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 "Worse (qualifier value)"
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009 "Sudden onset (qualifier value)"

Instance: WeightLossSymptom
InstanceOf: SymptomObservation
Description: "Weight Loss"
Usage: #example
 
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalDiscomfortSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ConstipationSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(DecreasedAppetiteSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(MrDoe)
* effectivePeriod.start = "2025-09-01T13:22:17.239+02:00"
* issued = "2025-11-10T13:42:17.239+02:00"
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#262285001  	
* valueCodeableConcept.text = "Weight decreased (finding)"
* component[trend].valueCodeableConcept = http://snomed.info/sct#35105006 "Increased (qualifier value)"
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#61751001 "Gradual onset (qualifier value)"

Instance: DecreasedAppetiteSymptom
InstanceOf: SymptomObservation
Description: "Decreased Appetite"
Usage: #example
 
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalDiscomfortSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ConstipationSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(WeightLossSymptomSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(MrDoe)
* effectivePeriod.start = "2025-09-01T13:22:17.239+02:00"
* issued = "2025-11-10T13:42:17.239+02:00"
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#64379006   	
* valueCodeableConcept.text = "Decrease in appetite (finding)"
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#61751001 "Gradual onset (qualifier value)"

Instance: AbdominalDiscomfortSymptom
InstanceOf: SymptomObservation
Description: "Abdominal Discomfort"
Usage: #example
 
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ConstipationSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(WeightLossSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(DecreasedAppetiteSymptom)
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

* component[quality].valueCodeableConcept = http://snomed.info/sct#279093005 "Cramping pain (finding)"
* component[severity].valueCodeableConcept = http://snomed.info/sct#442452003 "Life threatening severity (qualifier value)"
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002 "Acute fulminating (qualifier value)"
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 "Worse (qualifier value)"
* component[frequency].valueRatio.numerator.value = 1
* component[frequency].valueRatio.denominator.value = 24
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009 "Sudden onset (qualifier value)"

Instance: AbdominalPainSymptom
InstanceOf: SymptomObservation
Description: "Abdominal pain"
Usage: #example
 
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ConstipationSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalDiscomfortSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(WeightLossSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(UnmedicatedAbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(MedicatedAbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(DecreasedAppetiteSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(MrDoe)
* effectivePeriod.start = "2025-09-01T13:22:17.239+02:00"
* issued = "2025-11-10T13:42:17.239+02:00"
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#21522001
* valueCodeableConcept.text = "Abdominal pain (finding)"
* bodySite = http://snomed.info/sct#113276009 "Intestinal structure (body structure)"

* component[quality].valueCodeableConcept = http://snomed.info/sct#279093005 "Cramping pain (finding)"
* component[severity].valueCodeableConcept = http://snomed.info/sct#24484000 "Severe (severity modifier) (qualifier value)"
* component[severity].extension[scaleCode].valueReference = Reference(InitialPainAssessmentCollection)
* component[impact]
  * extension[functionalAssessment].valueReference = Reference(AppetiteFunctionalAssessmentCollection)
  * code = http://hl7.org/fhir/sid/icf#b1302
  * valueCodeableConcept = http://loinc.org#LA6568-5 "Not at all"
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002 "Acute fulminating (qualifier value)"
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 "Worse (qualifier value)"
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009 "Sudden onset (qualifier value)"

Instance: UnmedicatedAbdominalPainSymptom
InstanceOf: SymptomObservation
Description: "Abdominal pain"
Usage: #example

* extension[associatedSymptomOrCondition][+].valueReference = Reference(ConstipationSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalDiscomfortSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(WeightLossSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(MedicatedAbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(DecreasedAppetiteSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(MrDoe)
* effectivePeriod.start = "2025-09-01T13:22:17.239+02:00"
* issued = "2025-11-10T13:42:17.239+02:00"
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#21522001
* valueCodeableConcept.text = "Abdominal pain (finding)"
* bodySite = http://snomed.info/sct#113276009 "Intestinal structure (body structure)"

* component[quality].valueCodeableConcept = http://snomed.info/sct#279093005 "Cramping pain (finding)"
* component[severity]
  * extension[scaleCode].valueReference = Reference(UnmedicatedPainAssessmentCollection)
  * valueCodeableConcept = http://snomed.info/sct#24484000 "Severe (severity modifier) (qualifier value)"
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002 "Acute fulminating (qualifier value)"
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 "Worse (qualifier value)"
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009 "Sudden onset (qualifier value)"

Instance: MedicatedAbdominalPainSymptom
InstanceOf: SymptomObservation
Description: "Abdominal pain"
Usage: #example
 
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ConstipationSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalDiscomfortSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(WeightLossSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(UnmedicatedAbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(DecreasedAppetiteSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(MrDoe)
* effectivePeriod.start = "2025-09-01T13:22:17.239+02:00"
* issued = "2025-11-10T13:42:17.239+02:00"
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#21522001
* valueCodeableConcept.text = "Abdominal pain (finding)"
* bodySite = http://snomed.info/sct#113276009 "Intestinal structure (body structure)"

* component[quality].valueCodeableConcept = http://snomed.info/sct#279093005 "Cramping pain (finding)"
* component[severity].extension[scaleCode].valueReference = Reference(MedicatedPainAssessmentCollection)
* component[severity].valueCodeableConcept = http://snomed.info/sct#24484000 "Severe (severity modifier) (qualifier value)"
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002 "Acute fulminating (qualifier value)"
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 "Worse (qualifier value)"
* component[alleviatingFactors].valueCodeableConcept = http://snomed.info/sct#18629005 "Administration of drug or medicament (procedure)"
* component[alleviatingFactors].extension[relatedMedication].valueReference = Reference(IVMorphineDoseage)
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009 "Sudden onset (qualifier value)"

Instance: RectalBleedingSymptomAbsence
InstanceOf: SymptomAbsentObservation
Description: "Absence of rectal bleeding"
Usage: #example 
 
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ConstipationSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalDiscomfortSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(WeightLossSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(UnmedicatedAbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(MedicatedAbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(DecreasedAppetiteSymptom)
* status = #final
* effectivePeriod.start = "2025-09-23T13:22:17.239+02:00"
* effectivePeriod.end = "2025-09-23T13:42:17.239+02:00"
* issued = "2025-09-15T13:28:17.239+02:00"
* subject = Reference(MrDoe)
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#414992000 
* valueCodeableConcept.text = "Painless rectal bleeding (finding)"

Instance: EarlySatietySymptomAbsence
InstanceOf: SymptomAbsentObservation
Description: "Absence of early satiety"
Usage: #example 
 
* extension[associatedSymptomOrCondition][+].valueReference = Reference(ConstipationSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalDiscomfortSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(WeightLossSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(AbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(UnmedicatedAbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(MedicatedAbdominalPainSymptom)
* extension[associatedSymptomOrCondition][+].valueReference = Reference(DecreasedAppetiteSymptom)
* status = #final
* effectivePeriod.start = "2025-09-23T13:22:17.239+02:00"
* effectivePeriod.end = "2025-09-23T13:42:17.239+02:00"
* issued = "2025-09-15T13:28:17.239+02:00"
* subject = Reference(MrDoe)
* performer = Reference(MrDoe)
* valueCodeableConcept = http://snomed.info/sct#442076002 
* valueCodeableConcept.text = "Early satiety (finding) "

Instance: InitialPainAssessmentCollection
InstanceOf: AssessmentScaleCollection
Description: "Collection of rating of abdominal cramping pain"
Usage: #example
* status = #final
* category[survey].text = "Assessment Pain Scale"
* code = http://loinc.org#80316-3
* subject = Reference(MrDoe)
* effectiveDateTime = "2025-11-10T13:28:17.239+02:00"
* performer = Reference(AdmissionsPerson)
* hasMember = Reference(InitialPainAssessmentScale)

Instance: InitialPainAssessmentScale
InstanceOf: AssessmentScaleObservation
Description: "Rating of abdominal cramping pain"
Usage: #example
* status = #final
* category[survey].text = "Assessment Pain Scale"
* code = http://loinc.org#LA25253-8
* subject = Reference(MrDoe)
* effectiveDateTime = "2025-11-10T13:28:17.239+02:00"
* performer = Reference(AdmissionsPerson)
* valueRatio.numerator.value = 4
* valueRatio.denominator.value = 10

Instance: UnmedicatedPainAssessmentCollection
InstanceOf: AssessmentScaleCollection
Description: "Collection of rating of abdominal cramping pain"
Usage: #example
* status = #final
* category[survey].text = "Assessment Pain Scale"
* code = http://loinc.org#80316-3
* subject = Reference(MrDoe)
* effectiveDateTime = "2025-11-10T13:28:17.239+02:00"
* performer = Reference(AdmissionsPerson)
* hasMember = Reference(UnmedicatedPainAssessmentScale)

Instance: UnmedicatedPainAssessmentScale
InstanceOf: AssessmentScaleObservation
Description: "Rating of abdominal cramping pain"
Usage: #example
* status = #final
* category[survey].text = "Assessment Pain Scale"
* code = http://loinc.org#LA25253-8
* subject = Reference(MrDoe)
* effectiveDateTime = "2025-11-10T13:28:17.239+02:00"
* performer = Reference(AdmissionsPerson)
* valueRatio.numerator.value = 10
* valueRatio.denominator.value = 10

Instance: MedicatedPainAssessmentCollection
InstanceOf: AssessmentScaleCollection
Description: "Collection of rating of abdominal cramping pain"
Usage: #example
* status = #final
* category[survey].text = "Assessment Pain Scale"
* code = http://loinc.org#80316-3
* subject = Reference(MrDoe)
* effectiveDateTime = "2025-11-10T13:28:17.239+02:00"
* performer = Reference(AdmissionsPerson)
* hasMember = Reference(MedicatedPainAssessmentScale)

Instance: MedicatedPainAssessmentScale
InstanceOf: AssessmentScaleObservation
Description: "Rating of abdominal cramping pain"
Usage: #example
* status = #final
* category[survey].text = "Assessment Pain Scale"
* code = http://loinc.org#LA25253-8
* subject = Reference(MrDoe)
* effectiveDateTime = "2025-11-10T13:28:17.239+02:00"
* performer = Reference(AdmissionsPerson)
* valueRatio.numerator.value = 8
* valueRatio.denominator.value = 10

Instance: AppetiteFunctionalAssessmentCollection
InstanceOf: FunctionalAssessmentCollection
Description: "Collection of appetite assessment"
Usage: #example
* status = #final
* category[functionalDomain] = http://hl7.org/fhir/sid/icf#b1302
* code = http://loinc.org#70505-3
* subject = Reference(MrDoe)
* effectiveDateTime = "2025-11-10T13:28:17.239+02:00"
* performer = Reference(AdmissionsPerson)
* hasMember = Reference(AppetiteFunctionalAssessmentScale)

Instance: AppetiteFunctionalAssessmentScale
InstanceOf: FunctionalAssessmentObservation
Description: "Rating of appetite loss"
Usage: #example
* status = #final
* category[functionalDomain] = http://hl7.org/fhir/sid/icf#b1302
* code = http://loinc.org#70383-5
* subject = Reference(MrDoe)
* effectiveDateTime = "2025-11-10T13:28:17.239+02:00"
* performer = Reference(AdmissionsPerson)
* valueCodeableConcept = http://loinc.org#LA6568-5

Instance: IVMorphineDoseage
InstanceOf: MedicationStatement
Description: "Dose of IV morphine"
Usage: #example
* status = #active
* medicationCodeableConcept = http://snomed.info/sct#73572009
* subject = Reference(MrDoe)
* reasonReference = Reference(UnmedicatedAbdominalPainSymptom)
