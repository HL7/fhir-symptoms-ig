### Systems
This guide defines the responsibilities of a Symptom system

[**Symptom systems**](CapabilityStatement-SymptomCapabilities.html) are typically Electronic Health Record (EHR) systems but could theoretically be any system responsible for recording patient symptoms.

### MustSupport
This implementation guide uses specific terminology to flag statements that have relevance for the evaluation of conformance with the guide:

* **SHALL** indicates requirements that must be met to be conformant with the specification.

* **SHOULD** indicates behaviors that ought to be adhered to to avoid suboptimal interoperability but which do not, for this version of the specification, affect the determination of specification conformance.

* **MAY** describes optional behaviors that are free to consider but where there is no recommendation for or against adoption.

As well, profiles in this implementation guide make use of the [mustSupport]({{site.data.fhir.path}}profiling.html#mustsupport) element.  Base expectations for the intepretations of these terms are set in the [FHIR core specification]({{site.data.fhir.path}}conformance-rules.html#conflang).

Along with those expectations, the following rules on MustSupport are also required:

* Systems **SHALL** be capable of returning resource instances containing any of the data elements that are marked as Must Support.
* Systems **SHALL** be capable of receiving all data elements that are marked as Must Support.  They **SHALL NOT** generate an error or cause the application to fail when receiving any data element that is marked as Must Support.
