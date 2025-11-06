### Overview

This guide presumes that systems that are exchange symptom data shall do so using the [FHIR RESTful API]({{site.data.fhir.path}}http.html).

### Symptoms Recording

[Symptoms](StructureDefinition-SymptomObservation.html) and [Absent Symptoms](StructureDefinition-SymptomAbsentObservation.html) **SHALL** be recorded using the [CREATE]({{site.data.fhir.path}}http.html#create) and [UPDATE]({{site.data.fhir.path}}http.html#update) interactions.

If a Symptom was recorded with a pre-coordinated concept or text, the original concept **SHALL** be sent as an additional Coding with the userSelected element set to 'true' or as CodeableConcept.text.  This would be in addition to the post-coordinated set of terms that are sent in the Symptoms profile.

### Symptoms Reading

[Symptoms](StructureDefinition-SymptomObservation.html) and [Absent Symptoms](StructureDefinition-SymptomAbsentObservation.html) **SHALL** be retrieved using the [READ]({{site.data.fhir.path}}http.html#read) interaction.

### Symptoms Searching

Systems **SHALL** allow for [Symptoms](StructureDefinition-SymptomObservation.html) and [Absent Symptoms](StructureDefinition-SymptomAbsentObservation.html) to be searched for using the [SEARCH]({{site.data.fhir.path}}http.html#search) interaction with the following search parameters:

* [category]({{site.data.fhir.path}}observation.html#search) - searching for observations that are of category symptoms, i.e. all symptoms and absent symptoms
* [patient]({{site.data.fhir.path}}observation.html#search) - searching for a specific patient
* [code]({{site.data.fhir.path}}observation.html#search) - searching for observations that are either a symptom (LOINC code 75325-1) or an absent symptom (LOINC code 111551-8)
* [code-value-concept]({{site.data.fhir.path}}observation.html#search) - searching for whether a patient has or does not have a specific symptom
* [date]({{site.data.fhir.path}}observation.html#search) - searching for a symptom that happened on a certain date
