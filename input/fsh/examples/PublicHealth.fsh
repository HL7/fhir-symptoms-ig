Instance: TrishDoe
InstanceOf: Patient
Description: "Trish Doe - Public Health"
Usage: #example
 
* name.given = "Trish"
* name.family = "Doe"
* gender = #female
* birthDate = "1980"

Instance: CoughSymptom
InstanceOf: SymptomObservation
Description: "Cough"
Usage: #example
 
* extension[associatedSymptom].valueReference = Reference(FeverSymptom)
* extension[associatedSymptom].valueReference = Reference(ShortnessOfBreathPHSymptom)
* extension[associatedSymptom].valueReference = Reference(FatigueSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(TrishDoe)
* effectivePeriod.start = "2025-10-14T13:22:17.239+02:00"
* issued = "2025-10-16T13:42:17.239+02:00"
* performer = Reference(TrishDoe)
* valueCodeableConcept = http://snomed.info/sct#49727002	
* valueCodeableConcept.text = "Cough"
* bodySite = http://snomed.info/sct#39607008 "Lung structure"

* component[severity].valueCodeableConcept = http://snomed.info/sct#444821000124100
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 
* component[otherEvents].valueCodeableConcept = http://snomed.info/sct#874901007
* component[otherEvents].extension[text].valueAnnotation.time = "2025-10-09"
* component[otherEvents].extension[text].valueAnnotation.text = "International travel"
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009

Instance: FeverSymptom
InstanceOf: SymptomObservation
Description: "Fever"
Usage: #example
 
* extension[associatedSymptom].valueReference = Reference(CoughSymptom)
* extension[associatedSymptom].valueReference = Reference(ShortnessOfBreathPHSymptom)
* extension[associatedSymptom].valueReference = Reference(FatigueSymptom)
* status = #final
* code = http://loinc.org#75325-1 "Symptom"
* subject = Reference(TrishDoe)
* effectivePeriod.start = "2025-10-14T13:22:17.239+02:00"
* issued = "2025-10-16T13:42:17.239+02:00"
* performer = Reference(TrishDoe)
* valueCodeableConcept = http://snomed.info/sct#386661006	
* valueCodeableConcept.text = "Fever (finding)"

* component[severity].valueCodeableConcept = http://snomed.info/sct#444821000124100
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 
* component[otherEvents].valueCodeableConcept = http://snomed.info/sct#874901007 
* component[otherEvents].extension[text].valueAnnotation.time = "2025-10-09"
* component[otherEvents].extension[text].valueAnnotation.text = "International travel"
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009

Instance: ShortnessOfBreathPHSymptom
InstanceOf: SymptomObservation
Description: "Shortness of breath"
Usage: #example

* extension[associatedSymptom].valueReference = Reference(CoughSymptom)
* extension[associatedSymptom].valueReference = Reference(FeverSymptom)
* extension[associatedSymptom].valueReference = Reference(FatigueSymptom)
* status = #final
* subject = Reference(TrishDoe)
* effectivePeriod.start = "2025-10-14T13:22:17.239+02:00"
* issued = "2025-10-16T13:42:17.239+02:00"
* performer = Reference(TrishDoe)
* valueCodeableConcept = http://snomed.info/sct#267036007
* valueCodeableConcept.text = "Dyspnea (finding)"
* bodySite = http://snomed.info/sct#39607008 "Lung structure"

* component[severity].valueCodeableConcept = http://snomed.info/sct#6736007
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 
* component[otherEvents].valueCodeableConcept = http://snomed.info/sct#874901007 
* component[otherEvents].extension[text].valueAnnotation.time = "2025-10-09"
* component[otherEvents].extension[text].valueAnnotation.text = "International travel"
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009

Instance: FatigueSymptom
InstanceOf: SymptomObservation
Description: "Fatigue"
Usage: #example

* extension[associatedSymptom].valueReference = Reference(CoughSymptom)
* extension[associatedSymptom].valueReference = Reference(FeverSymptom)
* extension[associatedSymptom].valueReference = Reference(ShortnessOfBreathPHSymptom)
* status = #final
* subject = Reference(TrishDoe)
* effectivePeriod.start = "2025-10-14T13:22:17.239+02:00"
* issued = "2025-10-16T13:42:17.239+02:00"
* performer = Reference(TrishDoe)
* valueCodeableConcept = http://snomed.info/sct#84229001	
* valueCodeableConcept.text = "Fatigue (finding)"

* component[severity].valueCodeableConcept = http://snomed.info/sct#371923003
* component[clinicalCourse].valueCodeableConcept = http://snomed.info/sct#18131002
* component[trend].valueCodeableConcept = http://snomed.info/sct#231877006 
* component[otherEvents].valueCodeableConcept = http://snomed.info/sct#874901007 
* component[otherEvents].extension[text].valueAnnotation.time = "2025-10-09"
* component[otherEvents].extension[text].valueAnnotation.text = "International travel"
* component[speedOfOnset].valueCodeableConcept = http://snomed.info/sct#385315009