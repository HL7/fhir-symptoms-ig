
### Mandatory Data Elements

The following data elements SHALL or SHALL NOT be present. They are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The [Formal Views](#profile) below provides the formal summary, definitions, and terminology requirements.  

**Each Symptom SHALL Have:**

1. a status
1. a category - one repetition must be set to 'symptom'
1. a code which represents the symptom being described
1. a patient
1. a dateTime or period detailing when the symptom occurred
1. a performer of either the Patient or a RelatedPerson who provided the information about the symptom
1. a valueCodeableConcept which indicates whether the symptom was present or was not present

**Each Symptom SHALL NOT provide:**

1. a data absent reason - if there is no data about the symptom, then just do not provide information about that symptom
1. an interpretation code or a reference range - those apply to observations in general but not to symptom observations
1. a specimen or device - those do not apply to symptom observations

### Other Important Data Elements
In a normal profile, we would indicate the remaining data elements using the Must Support flag.  But since the expected use of this IG is that other IGs would further constrain the Symptoms profile for their own use, we have intentionally not used the Must Support flag so as not to imply any additionally required conformance statements.  Instead, we have indicated data elements that were considered important to convey.  These elements are the following:

1. issued - when the symptoms information was recorded.  This is different from the effective dateTime or period.
1. bodySite - a code representing where the patient feels the symptom in the body
1. note - a text description of the symptom provided by the patient or caregiver
1. associatedSymptom extension - used to associate other symptoms with this symptom for arbitrary groupings
1. associatedCondition extension - used to indicate a relationship between this symptom and a condition, eg. a symptom known to be due to a patient's condition

### Component Observations of the Symptom
A lot of the structured information of the Symptom is profiled in the component observations.  These component observations do not have a life of their own but are tied to the symptom itself.  Every component observation has a note extension and does not allow a data absent reason, interpretation, or reference range element.

The following component observations allow for an assessment scale code or reference to an asssessment scale observation to be provided:

1. Quality - a patient's internal perception of the symptom.  This is represented by the LOINC code 56823-8 and a value that is the quality.
1. Severity - the intensity with which the patient experiences the symptom.  This is represented by the LOINC code 64750-3 and a value that is the severity.
1. Functional Impact - How the symptom affects the patient's daily activities. This is represented by a code taken from the WHO's International Classification of Functioning, Disability and Health code system.  NOTE: This will also allow a variant of PACIO's PFE profile for providing the functional impact.
1. Clinical Course - the character of the symptom onset.  This is represented by the LOINC code 89261-2 and a value that is the clinical course.  An optional scale code or reference to an assessment scale is provided.

The following component observations have no assessment scale attached to them:

1. Trend - whether a symptom is improving, worsening, stable, or resolved.  This is represented by the LOINC code 89253-9 and a value that is the trend.
1. Affective Grade - the emotional or mental impact of the symptom.  This is represented by the SNOMED code 279116004 (Affective response to pain) and a value that is the affective grade.
1. Triggers or Exacerbating Factors - these are factors which either trigger the symptom or exacerbate the symptom.  This is represented by the LOINC code 100752-5 and a value that is the factor.  It also provides an extension to indicate a medication that is believed to cause or exacerbate the symptom.
1. Alleviating Factors - patient-reported actions, conditions, events, or other factors that decrease the symptoms. This is represented by the LOINC code 100753-3 and a value that is the factor. It also provides an extension to indicate a medication that is believed to alleviate the symptom.
1. Other Events - this is a catch-all to report other events that were occurring at the time of the symptom onset but were not considered triggers.  This is represented by the code OTHEREVENTS and a value that is the event.
1. Frequency - how often the patient experiences the symptom.  This is represented by the LOINC code 104156-5 and either a code that represents the frequency or a Ratio to express frequencies such as 2x/day.
1. Speed Of Onset - the rate at which the symptom becomes apparent.  This is represented by the LOINC code 99495-4 and a value that is the speed of onset.


