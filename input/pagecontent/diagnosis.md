### Relationship Between Symptoms and Diagnoses
In clinical documentation, **symptoms** represent the *subjective evidence* of a health state, typically experienced and reported by the patient (e.g., “fatigue,” “chest pain,” “nausea”).  
In contrast, **diagnoses** represent the *clinical interpretation* or *determination of an underlying condition* that explains one or more symptoms or findings (e.g., “pneumonia,” “myocardial infarction,” “anemia”).

Within FHIR, these two types of information are represented by distinct but complementary resources:

| Clinical Concept | FHIR Resource | Typical Coding Systems | Description |
|-----------------|---------------|-----------------------|-------------|
| **Symptom**      | [Observation](http://hl7.org/fhir/observation.html) | SNOMED CT, LOINC | Captures the presence, absence, severity, or characteristics of a symptom as reported by a patient or observed by a clinician. |
| **Diagnosis**    | [Condition](http://hl7.org/fhir/condition.html)   | SNOMED CT, ICD-10, ICD-11 | Represents the clinician’s diagnostic conclusion or disease identification that accounts for one or more symptoms and findings. |

Both resource types may coexist within a patient record and are often linked to support clinical reasoning, quality measurement, and decision support use cases.

---

### Linking Symptoms and Diagnoses in FHIR

FHIR provides multiple mechanisms to establish relationships between Observations representing symptoms and Conditions representing diagnoses.

#### Condition.evidence.detail
The primary mechanism for associating a **Condition** with supporting evidence is the [`Condition.evidence.detail`](http://hl7.org/fhir/condition-definitions.html#Condition.evidence.detail) element.  
This allows a Condition to reference one or more Observations (symptoms, test results, or other findings) that informed the diagnostic conclusion.

#### Observation.focus
When documenting a symptom Observation, the [`Observation.focus`](http://hl7.org/fhir/observation-definitions.html#Observation.focus) element can link that symptom to a known or suspected Condition that it relates to.

---

### Conceptual Model

Patient Experience  →  Symptom (Observation)
→  Clinical Interpretation  →  Diagnosis (Condition)

- **Symptoms (Observations)** provide the *evidentiary basis* for diagnostic reasoning.  
- **Diagnoses (Conditions)** represent the *resultant clinical interpretation*, often referencing the Observations that support them.

---

### Implementation Considerations

- **Traceability**: Use `Condition.evidence.detail` to maintain a traceable, computable link between diagnostic conclusions and their supporting findings.
- **Symptom Clustering**: Multiple symptom Observations may be grouped using `Observation.hasMember`, or captured together via a `Questionnaire`/`QuestionnaireResponse` or an Observation panel.
- **Temporal Context**: Include `effective[x]`, `onset[x]`, and `abatement[x]` elements on Observations and Conditions to accurately reflect timing and sequence.
- **Provenance & Certainty**: Capture provenance (who recorded the symptom) and the certainty/verification status of the Condition (e.g., `Condition.verificationStatus`) to clarify whether a diagnosis is provisional, confirmed, or refuted.
- **Terminology Alignment**: Prefer **SNOMED CT** for clinical concepts (symptoms and conditions) to enable semantic linkage. Use **LOINC** for structured instruments or patient-reported measures where appropriate. Use ICD-10/ICD-11 for billing/classification needs while preserving clinical codes for interoperability.
- **Multiplicity**: A single Observation (symptom) may support multiple Conditions; similarly, a single Condition may be supported by multiple Observations.

---

### Summary Table

| Aspect | Symptom (Observation) | Diagnosis (Condition) |
|--------|-----------------------|----------------------|
| Clinical Nature | Manifestation experienced or observed | Underlying cause or interpretation |
| Primary FHIR Resource | `Observation` | `Condition` |
| Relationship Element | `Observation.focus`, `Observation.derivedFrom` | `Condition.evidence.detail` |
| Typical Codes | SNOMED CT (e.g., *Pain in chest*), LOINC (e.g., *Severity of nausea*) | SNOMED CT, ICD-10 (e.g., *Pneumonia*, *Migraine*) |
| Example Relationship | Symptom supports one or more Conditions | Condition references multiple supporting Observations |

---

### Guidance Summary

> **Best Practice:** Use `Condition.evidence.detail` to link Conditions to the Observations (Symptoms) that support them. Optionally use `Observation.focus` (or `derivedFrom`) to indicate the reverse relationship. Ensure consistent coding, provenance, and temporal alignment to support computable reasoning and interoperability.