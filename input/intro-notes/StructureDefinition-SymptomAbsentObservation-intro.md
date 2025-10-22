
### Mandatory Data Elements

The following data elements must always be present or must be supported if the data is present in the sending system ([Must Support](conformance.html#mustsupport) definition). They are presented below with a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [Formal Profile Definition](#profile) below provides the formal summary, definitions, and terminology requirements.

**Each Symptom Absent Observation SHALL Have:**

1. a status
1. a category - one repetition must be set to 'symptom'
1. a code (LOINC: 111551-8) that indicates this is a Symptom Absent observation
1. a patient
1. a dateTime or period detailing when the symptom was not present
1. a performer of either the Patient or a RelatedPerson who provided the information about the symptom
1. a valueCodeableConcept that provides the code identifying the specific symptom

**Each Symptom Absent Observation  SHALL support:**

1. bodySite - a code representing the body site where the symptom is NOT occurring, eg. no pain in my right knee

**Each Symptom Absent Observation  SHALL NOT provide:**

1. a data absent reason - if there is no data about the symptom, then just do not provide information about that symptom
1. an interpretation code or a reference range - those apply to observations in general but not to symptom observations
1. a specimen or device - those do not apply to symptom observations

### Other Important Data Elements
In a normal profile, we would indicate the remaining data elements using the Must Support flag.  But since the expected use of this IG is that other IGs would further constrain the Symptoms profile for their own use, we have intentionally not used the Must Support flag so as not to imply any additionally required conformance statements.  Instead, we have indicated data elements that were considered important to convey.  These elements are the following:

1. issued - when the symptoms information was recorded.  This is different from the effective dateTime or period.
1. note - a text description of the symptom provided by the patient or caregiver
1. associatedSymptom extension - used to associate other symptoms with this symptom for arbitrary groupings
1. associatedCondition extension - used to indicate a relationship between this symptom and a condition, eg. a symptom known to be due to a patient's condition
