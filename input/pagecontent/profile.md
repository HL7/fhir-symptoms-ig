The FHIR **Symptoms Logical Model** defines the conceptual representation of symptom data, independent of any particular FHIR resource. It specifies the key elements needed to describe symptoms, including onset, severity, course, body site, and qualitative descriptors. This logical model captures the semantics of symptoms and provides a consistent structure for implementers and modelers.

The **Symptoms FHIR Profile** is the concrete implementation of the logical model in FHIR. It constrains the base `Observation` resource to represent symptoms in a standardized, interoperable way. This includes specifying required elements, allowed value sets, and recommended patterns for capturing symptom information.

---

### How They Relate

- The **logical model** defines *what data needs to be captured* about a symptom and how these concepts relate to each other. It is independent of FHIR and can inform multiple implementations or use cases.
- The **FHIR profile** defines *how to represent the logical model in FHIR* using the `Observation` resource, including:
  - Cardinality constraints on elements
  - Required vs. optional data
  - Binding to terminology systems (e.g., SNOMED CT, LOINC)
  - Guidance for implementation in health IT systems

In essence, the FHIR profile operationalizes the logical model, making it actionable and exchangeable in a clinical system.

---

### Key Points

- **Conceptual alignment**: Every element in the Symptoms profile should trace back to a corresponding concept in the logical model.
- **Interoperability**: By mapping the logical model to FHIR, the profile ensures that symptom data can be shared consistently across systems.
- **Validation**: The profile enables implementers to validate FHIR Observations representing symptoms against the structure and terminology expectations derived from the logical model.

---

### Summary Table

| Aspect | Logical Model | FHIR Profile |
|--------|---------------|--------------|
| Purpose | Conceptual representation of symptom data | Standardized implementation in FHIR `Observation` |
| Scope | Defines elements, relationships, and semantics | Constrains resource elements, cardinality, and terminology bindings |
| Role | Guides what data should be captured | Ensures interoperable exchange and validation |
| Examples | Onset, severity, body site, course | `Observation.code`, `Observation.valueCodeableConcept`, `Observation.effective[x]` |

---

### Guidance

> Use the logical model as the authoritative reference for what symptom data should be captured. Use the FHIR profile to implement these concepts in health IT systems, ensuring interoperability and adherence to terminology standards.

---

### OpenEHR Archetype

**OpenEHR Archetypes** are a computable definition, or specification, for a single, discrete clinical concept. It is inclusive of all data elements that make clinical sense about that concept and designed for all imaginable clinical situations.  The definition is kept broad and constraints minimal in order to maximise interoperability by being able to share and re-use the archetype across many types of healthcare and the broadest range of clinical scenarios. The specification is expressed in Archetype Definition Language (ADL), which is an ISO standard, but able to be viewed and reviewed in 'clinician-friendly' formats, as structured definitions and mind maps.

Two of the archetypes are included in this guide for further clinical guidance: the Symptom-Sign archetype which correlates to the details of a single episode of a symptom or reported sign in an individual, and the Exclusion Symptom-Sign archetype which records a positive statement that a symptom or sign was not present.

>The OpenEHR Archetype is included in this guide as an informative document and an additional source of clinical guidance.
{: .stu-note}