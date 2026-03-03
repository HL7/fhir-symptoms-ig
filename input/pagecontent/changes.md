## Version = 1.1.0

#### JIRA Issues Applied

* [FHIR-53730](https://jira.hl7.org/browse/FHIR-53730) - Fixed several typos *(correction)* 
* [FHIR-53731](https://jira.hl7.org/browse/FHIR-53731) - Corrected use case language *(correction)* [link](usecases.html)
* [FHIR-53732](https://jira.hl7.org/browse/FHIR-53732) - Updated language in summary table *(correction)* [link](diagnosis.html#summary-table)
* [FHIR-53733](https://jira.hl7.org/browse/FHIR-53733) - Updated wording in Diagnosis.md to indicate how we linked symptoms to conditions *(correction)* [link](diagnosis.html#linking-symptoms-and-diagnoses-in-fhir)
* [FHIR-53734](https://jira.hl7.org/browse/FHIR-53734) - Removed SHOULD NOT conformance statement *(correction)* 
* [FHIR-53735](https://jira.hl7.org/browse/FHIR-53735) - Clarified mandatory vs non-mandatory requirements when exchanging data *(correction)* [link](exchange.html#overview)
* [FHIR-53736](https://jira.hl7.org/browse/FHIR-53736) - Changed 'recorded' to 'sent' *(correction)* [link](exchange.html#symptoms-sending)
* [FHIR-53737](https://jira.hl7.org/browse/FHIR-53737) - Clarified information about artifacts *(correction)* [link](artifact_overview.html)
* [FHIR-53739](https://jira.hl7.org/browse/FHIR-53739) - Added recurring.html page and updated best practices information in diagnosis.html *(correction)* [Recurring](recurring.html) [Diagnosis](diagnosis.html#guidance-summary)
* [FHIR-53740](https://jira.hl7.org/browse/FHIR-53740) - Indicated reporter is a patient or caregiver only *(correction)* [link](StructureDefinition-SymptomLogicalModel-definitions.html#SymptomLogicalModel.reporter[x])
* [FHIR-53741](https://jira.hl7.org/browse/FHIR-53741) - Updated elements of the logical model *(correction)* [link](StructureDefinition-SymptomLogicalModel.html)
* [FHIR-53742](https://jira.hl7.org/browse/FHIR-53742) - Updated short description of .issued *(correction)* [link](StructureDefinition-SymptomObservation.html)
* [FHIR-53743](https://jira.hl7.org/browse/FHIR-53743) - Added a section clarifying use of PACIO profiles *(correction)* [link](artifact_overview.html)
* [FHIR-53744](https://jira.hl7.org/browse/FHIR-53744) - Synced MS flags between profile and narrative *(correction)* 
* [FHIR-53747](https://jira.hl7.org/browse/FHIR-53747) - Updated FunctionalAssessment.value\[x\] to allow CodeableConcept as a type *(correction)* [link](StructureDefinition-FunctionalAssessment.html)
* [FHIR-53748](https://jira.hl7.org/browse/FHIR-53748) - Changed Medication to MedicationStatement or MedicationAdministration in profile and logical model *(correction)* [profile](StructureDefinition-SymptomObservation.html) [model](StructureDefinition-SymptomLogicalModel.html)
* [FHIR-54028](https://jira.hl7.org/browse/FHIR-54028) - Indicated how to use the supportingInfo workflow extension *(correction)* [link](StructureDefinition-SymptomObservation.html#other-important-data-elements)
* [FHIR-54172](https://jira.hl7.org/browse/FHIR-54172) - Updated purpose statement *(correction)* [link](index.html#purpose-and-scope)
* [FHIR-54175](https://jira.hl7.org/browse/FHIR-54175) - Added locationQualifier extension *(correction)* [link](StructureDefinition-LocationQualifier.html)
* [FHIR-54176](https://jira.hl7.org/browse/FHIR-54176) - Changed SymptomObservation.quality cardinality to 0..* *(correction)* [link](StructureDefinition-SymptomObservation.html)
* [FHIR-54177](https://jira.hl7.org/browse/FHIR-54177) - Linked discussion of relationship between model, profile, and openEHR archetypes to artifacts_overview page *(correction)* [link](artifact_overview.html)
* [FHIR-54185](https://jira.hl7.org/browse/FHIR-54185) - Hyperlinked SNOMED codes to their definition pages on the SNOMED site *(correction)* [link](index.html)
* [FHIR-54186](https://jira.hl7.org/browse/FHIR-54186) - Added reason for openEHR dependence to sushi-config.yaml *(correction)* 
* [FHIR-54187](https://jira.hl7.org/browse/FHIR-54187) - Added conceptual model diagram *(correction)* [link](diagnosis.html#conceptual-model)
* [FHIR-54192](https://jira.hl7.org/browse/FHIR-54192) - Added display values to examples *(correction)* 
* [FHIR-54197](https://jira.hl7.org/browse/FHIR-54197) - Changed SymptomObservation.functionalImpact cardinality to 0..* *(correction)* [link](StructureDefinition-SymptomObservation.html)
* [FHIR-54198](https://jira.hl7.org/browse/FHIR-54198) - Updated description of .surroundingEvents in the logical model *(correction)* [link](StructureDefinition-SymptomLogicalModel.html)
* [FHIR-54199](https://jira.hl7.org/browse/FHIR-54199) - Updated .frequency to allow for both a codeableconcept and a quantity *(correction)* [symptom](StructureDefinition-SymptomObservation.html) [model](StructureDefinition-SymptomLogicalModel.html)
* [FHIR-54200](https://jira.hl7.org/browse/FHIR-54200) - Updated description of .timing.note in the logical model *(correction)* [link](StructureDefinition-SymptomLogicalModel.html)
* [FHIR-54201](https://jira.hl7.org/browse/FHIR-54201) - Fixed typos *(correction)* 
* [FHIR-54202](https://jira.hl7.org/browse/FHIR-54202) - Changed timing.speed to timing.speedOfOnset in logical model *(correction)* [link](StructureDefinition-SymptomLogicalModel.html)
* [FHIR-54203](https://jira.hl7.org/browse/FHIR-54203) - Updated description of .clinicalCourse in the logical model *(correction)* [link](StructureDefinition-SymptomLogicalModel.html)
* [FHIR-54204](https://jira.hl7.org/browse/FHIR-54204) - Updated description of .documentationDate in the logical model *(correction)* [link](StructureDefinition-SymptomLogicalModel.html)
* [FHIR-54290](https://jira.hl7.org/browse/FHIR-54290) - Added section detailing patient-reporting of severity, onset, and other elements *(correction)* [link](index.html#purpose-and-scope)
* [FHIR-54294](https://jira.hl7.org/browse/FHIR-54294) - Added new examples *(correction)* 
* [FHIR-54290](https://jira.hl7.org/browse/FHIR-54290) - Revised pre- and post-coordintated table introduction *(correction)* [link](index.html#from-pre-coordinated-to-post-coordinated-best-practices-for-symptom-data-exchange)
* [FHIR-54308](https://jira.hl7.org/browse/FHIR-54308) - Fixed AffectiveGrade valueset to expand properly *(correction)* 
* [FHIR-54309](https://jira.hl7.org/browse/FHIR-54309) - Collapsed AffectiveGrade and FunctionalImpact elements into a single element named Impact *(correction)* [symptom](StructureDefinition-SymptomObservation.html) [model](StructureDefinition-SymptomLogicalModel.html)
* [FHIR-54586](https://jira.hl7.org/browse/FHIR-54586) - Updated Public Health usecase to better represent a public health event *(correction)* [link](usecases.html)
* [FHIR-54722](https://jira.hl7.org/browse/FHIR-54722) - Updated description of logical model, description of .associatedSymptom, and description of .associatedCondition *(correction)* [link](StructureDefinition-SymptomLogicalModel.html)
* [FHIR-54730](https://jira.hl7.org/browse/FHIR-54730) - Added information regarding searching symptoms *(correction)* [link](exchange.html#symptoms-searching)
* [FHIR-54846](https://jira.hl7.org/browse/FHIR-54846) - Clarified information regarding signs vs. symptoms *(correction)* [link](index.html#purpose-and-scope)
* [FHIR-54852](https://jira.hl7.org/browse/FHIR-54852) - Standardized EHR and Electronic Health Record terminology *(correction)* [link](conformance.html)
* [FHIR-54871](https://jira.hl7.org/browse/FHIR-54871) - Updated wording regarding system recording and searching capabilities and how patients interact with clinicians to relate symptoms throughout the guide *(correction)* 
* [FHIR-54930](https://jira.hl7.org/browse/FHIR-54930) - Revised usecase and index page to be more clear about purpose *(correction)* [home](index.html) [usecases](usecases.html)
* [FHIR-54953](https://jira.hl7.org/browse/FHIR-54953) - Added note about use of SNOMED for symptom codes *(correction)* [home](index.html)
* [FHIR-54972](https://jira.hl7.org/browse/FHIR-54972) - Fixed incorrect terminology in unintentional weight loss example *(correction)* [link](Observation-WeightLossSymptom.html)