
### Mandatory Data Elements

The following data elements must always be present or must be supported if the data is present in the sending system ([Must Support](conformance.html#mustsupport) definition). They are presented below with a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [Formal Profile Definition](#profile) below provides the formal summary, definitions, and terminology requirements.

**Each Assessment Scale Collection must have:**

1. a status
1. a category code of "survey"
1. a code representing the specific panel
1. a patient
1. the point in time or period when the observation was made
1. who made the observation

**Each Assessment Scale Collection must support:**

1. related questionnaire responses that this observation is made from
1. references to nested collections or single questions that represent the answers within the panel

**Profile specific implementation guidance:**

* These collection observations represent structured instruments and panels with multiple questions. The hasMember element **SHALL** be used to point to child Observation instances that contain the specific questions and answers, represented by [Single Observations](StructureDefinition-AssessmentScaleObservation.html). The Observation.value and Observation.component elements **SHALL** be empty.
