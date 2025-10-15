
### Mandatory Data Elements

The following data elements must always be present or must be supported if the data is present in the sending system ([Must Support](conformance.html#mustsupport) definition). They are presented below with a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [Formal Profile Definition](#profile) below provides the formal summary, definitions, and terminology requirements.

**Each Assessment Scale Observation must have:**

1. a status
1. a category code of "survey"
1. a code identifying the question asked or observation made
1. a patient
1. the point in time or period when the observation was made
1. who made the observation

**Each Assessment Scale Observation must support:**

1. the answer
1. related questionnaire responses that this observation is made from

**Profile specific implementation guidance:**

* These observations represent a specific question or observation, so the Observation.value element **SHALL** be populated and the hasMember list **SHALL** be empty.
