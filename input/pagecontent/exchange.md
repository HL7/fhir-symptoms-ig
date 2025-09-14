### Overview

This guide presumes that systems that are exchange symptom data shall do so using the [FHIR RESTful API]({{site.data.fhir.path}}http.html).

### Symptoms Recording

Symptoms **SHALL** be recorded using the [CREATE]({{site.data.fhir.path}}http.html#create) and [UPDATE]({{site.data.fhir.path}}http.html#update) interactions.

### Symptoms Reading

Symptoms **SHALL** be retrieved using the [READ]({{site.data.fhir.path}}http.html#read) interaction.

### Symptoms Searching

Systems **SHALL** allow for symptoms to be searched for using the [SEARCH]({{site.data.fhir.path}}http.html#search) interaction with the following search parameters:

* [code]({{site.data.fhir.path}}observation.html#search) - searching for a specific symptom
* [patient]({{site.data.fhir.path}}observation.html#search) - searching for a specific patient
* [value-concept]({{site.data.fhir.path}}observation.html#search) - searching for whether a patient has or does not have a specific symptom
* [date]({{site.data.fhir.path}}observation.html#search) - searching for a symptom that happened on a certain date
