### Overview

#### Purpose and Scope
The purpose of this implementation guide is to standardize the representation and exchange of patient-reported symptoms using FHIR R4 resources. The absence of standardized definitions and formats for symptoms data currently hinders effective sharing across providers. This initiative aims to decrease missed, delayed, or inaccurate diagnoses by supporting the standardized exchange of symptom data.

Symptoms in the context of this guide refer to subjective observations reported by patients or their caregivers about changes in their health status. This guide focuses on capturing what patients report about their experiences, which may include both what clinicians would classify as true symptoms (subjective experiences like pain or fatigue) as well as signs (objective findings that patients observe about themselves, such as a rash or swelling). The semantic intent is to capture the patient’s perspective of their health concerns as they report them, recognizing that patients may not distinguish between symptoms and signs in the way healthcare professionals do.

This implementation guide provides FHIR profiles that structure patient-reported symptom data for exchange across visits and health systems. By standardizing how systems represent key symptom attributes, including severity, onset, duration, location, quality, and other characteristics, this guide supports the recognition of symptom patterns and ultimately supports more informed diagnostic decision-making to improve patient outcomes.

##### References
[1] Singh H, Meyer AN, Thomas EJ. The frequency of diagnostic errors in outpatient care: estimations from three large observational studies involving US adult populations. BMJ Qual Saf. 2014;23(9):727-731. doi:10.1136/bmjqs-2013-002627

[2] Newman-Toker DE, Nassery N, Schaffer AC, et al. Burden of serious harms from diagnostic error in the USA. BMJ Qual Saf. 2024;33(2):109-120. doi:10.1136/bmjqs-2021-014130

[3] Liberman AL, Newman-Toker DE. Symptom-Disease Pair Analysis of Diagnostic Error (SPADE): a conceptual framework and methodological approach for unearthing misdiagnosis-related harms using big data. BMJ Qual Saf. 2018;27(7):557-566. doi:10.1136/bmjqs-2017-007032

#### Intended Audience and System Capabilities
This guide is intended for health information systems that have the capability to expose symptom data as discrete, structured FHIR elements. This includes:
* Electronic Health Record (EHR) systems
* Patient-facing applications and patient-reported outcome platforms
* Care coordination platforms
* Clinical decision support systems
* Data analytics and population health systems

**Important Note on Implementation Variability:** While this guide defines profiles with discrete elements for representing detailed symptom information, implementers should recognize that system capabilities vary. Some systems may have robust structured data capture for symptoms and can populate all discrete elements defined in the profiles. Other systems may have more limited capabilities and may only be able to return symptom information as narrative text in the Observation.value element, with minimal use of the other discrete profile elements. Both approaches are valid implementations of this guide, though systems with more granular data capture will provide richer information to support clinical decision-making.

#### What This Guide Covers
* Standardized FHIR profiles for representing patient-reported symptoms
* Guidance on capturing symptom attributes as reported by patients (severity, onset, timing, location, quality, etc.)
* Exchange patterns for sharing symptom information across care settings
* Terminology bindings to support semantic interoperability
* Use cases demonstrating symptom documentation and exchange scenarios

#### What This Guide Does Not Cover
* Clinical signs obtained through provider examination or diagnostic testing (unless reported by the patient themselves)
* Diagnostic conclusions or clinical interpretations
* Prescriptive guidance on clinical symptom assessment methodologies
* Requirements for specific user interfaces or data capture workflows

#### From Pre-Coordinated to Post-Coordinated: Best Practices for Symptom Data Exchange

Electronic health records (EHRs) and other clinical systems sometimes capture and store symptoms as **pre-coordinated concepts and/or text**, meaning one code combines multiple details—for example, “abdominal pain” includes both the symptom and the body site.

For data exchange, this Implementation Guide (IG) recommends a **post-coordinated approach**. This means breaking down the combined code (decomposition) so the symptom goes in observation.value, while related details—such as body site—are recorded in separate fields. This structure improves flexibility and supports consistent interoperability across systems. See the following table which provides examples of Pre-Coordinated code versus the Post-Coordinated combinations.

It is still necessary for the original pre-coordinated concept to be included in exchange and the FHIR CodableConcept structure allows this by including multiple Codings.  Our recommendation is that a system send the post-coordinated code as one Coding and also send the original concept as another Coding with the Coding.userSelected element set to 'true'.


| Pre-coordinated coding.code | Pre-coordinated coding.display | Map to | Post-coordinated value.coding.code | Post-coordinated value.coding.display | Post-coordinated bodySite coding.code | Post-coordinated bodySite coding.display |
|---|---|---|---|---|---|---|
| [51197009](https://browser.ihtsdotools.org/?perspective=full&conceptId1=51197009&edition=MAIN/2026-01-01&release=&languages=en) | Stomach cramps (finding) | | [55300003](https://browser.ihtsdotools.org/?perspective=full&conceptId1=55300003&edition=MAIN/2026-01-01&release=&languages=en) | Cramp (finding) | [69695003](https://browser.ihtsdotools.org/?perspective=full&conceptId1=69695003&edition=MAIN/2026-01-01&release=&languages=en) | Stomach structure (body structure) |
| [53430007](https://browser.ihtsdotools.org/?perspective=full&conceptId1=53430007&edition=MAIN/2026-01-01&release=&languages=en) | Pain of breast (finding) | | [22253000](https://browser.ihtsdotools.org/?perspective=full&conceptId1=22253000&edition=MAIN/2026-01-01&release=&languages=en) | Pain (finding) | [76752008](https://browser.ihtsdotools.org/?perspective=full&conceptId1=76752008&edition=MAIN/2026-01-01&release=&languages=en) | Breast structure (body structure) |
| [25064002](https://browser.ihtsdotools.org/?perspective=full&conceptId1=25064002&edition=MAIN/2026-01-01&release=&languages=en) | Headache (finding) | | [22253000](https://browser.ihtsdotools.org/?perspective=full&conceptId1=22253000&edition=MAIN/2026-01-01&release=&languages=en) | Pain (finding) | [69536005](https://browser.ihtsdotools.org/?perspective=full&conceptId1=69536005&edition=MAIN/2026-01-01&release=&languages=en) | Head structure (body structure) |
| [279039007](https://browser.ihtsdotools.org/?perspective=full&conceptId1=279039007&edition=MAIN/2026-01-01&release=&languages=en) | Low back pain (finding) | | [22253000](https://browser.ihtsdotools.org/?perspective=full&conceptId1=22253000&edition=MAIN/2026-01-01&release=&languages=en) | Pain (finding) | [37822005](https://browser.ihtsdotools.org/?perspective=full&conceptId1=37822005&edition=MAIN/2026-01-01&release=&languages=en) | Structure of back of abdominopelvic segment of trunk (body structure) |
| [30473006](https://browser.ihtsdotools.org/?perspective=full&conceptId1=30473006&edition=MAIN/2026-01-01&release=&languages=en) | Pain in pelvis (finding) | | [22253000](https://browser.ihtsdotools.org/?perspective=full&conceptId1=22253000&edition=MAIN/2026-01-01&release=&languages=en) | Pain (finding) | [12921003](https://browser.ihtsdotools.org/?perspective=full&conceptId1=12921003&edition=MAIN/2026-01-01&release=&languages=en) | Structure of pelvis (body structure) |
| [23924001](https://browser.ihtsdotools.org/?perspective=full&conceptId1=23924001&edition=MAIN/2026-01-01&release=&languages=en) | Tight chest (finding) | | [299954009](https://browser.ihtsdotools.org/?perspective=full&conceptId1=299954009&edition=MAIN/2026-01-01&release=&languages=en) | Tightness sensation (finding) | [51185008](https://browser.ihtsdotools.org/?perspective=full&conceptId1=51185008&edition=MAIN/2026-01-01&release=&languages=en) | Thoracic structure (body structure) |
| [57676002](https://browser.ihtsdotools.org/?perspective=full&conceptId1=57676002&edition=MAIN/2026-01-01&release=&languages=en) | Pain of joint (finding) | | [22253000](https://browser.ihtsdotools.org/?perspective=full&conceptId1=22253000&edition=MAIN/2026-01-01&release=&languages=en) | Pain (finding) | [39352004](https://browser.ihtsdotools.org/?perspective=full&conceptId1=39352004&edition=MAIN/2026-01-01&release=&languages=en) | Joint structure (body structure) |
| [21522001](https://browser.ihtsdotools.org/?perspective=full&conceptId1=21522001&edition=MAIN/2026-01-01&release=&languages=en) | Abdominal pain (finding) | | [22253000](https://browser.ihtsdotools.org/?perspective=full&conceptId1=22253000&edition=MAIN/2026-01-01&release=&languages=en) | Pain (finding) | [818983003](https://browser.ihtsdotools.org/?perspective=full&conceptId1=818983003&edition=MAIN/2026-01-01&release=&languages=en) | Abdomen (body structure) |
| [29857009](https://browser.ihtsdotools.org/?perspective=full&conceptId1=29857009&edition=MAIN/2026-01-01&release=&languages=en) | Chest pain (finding) | | [22253000](https://browser.ihtsdotools.org/?perspective=full&conceptId1=22253000&edition=MAIN/2026-01-01&release=&languages=en) | Pain (finding) | [51185008](https://browser.ihtsdotools.org/?perspective=full&conceptId1=51185008&edition=MAIN/2026-01-01&release=&languages=en) | Thoracic structure (body structure) |
{:.grid}

**NOTE ON SNOMED CT USAGE:** Throughout this guide, we recommend and use SNOMED-CT codes.  Work is underway to include the common symptoms code in the IPS SNOMED value set which would then be accessible to all.


### Content and Organization
This implementation guide (and the menu for it) is organized into the following sections:

* Background - Supporting informative pages that do not set conformence expectations
  * [Reading this IG](background.html) points to key pages in the FHIR spec that must be understood in order to understand this guide
  * [Use Cases](usecases.html) gives examples of symptoms and how they are recorded using the profiles in the guide
  * [Projects and Participants](acknowledgements.html) identifies the individuals and organizations involved in developing this implementation guide
* Specification - Pages that set conformance expectations
  * [Conformance Expectations](conformance.html) defines base language and expectations for declaring conformance with the guide
  * [Exchange Patterns](exchange.html) defines how Symptoms are to be searched for and exchanged
* FHIR Artifacts
  * [Artifacts](artifacts.html) points to the complete list of artifacts defined in this guide
  * [Terminology](terminology.html) lists all of the value sets that are defined in this guide
* Support - Links to help with the use of this guide
  * Discussion Forum is a place to ask questions about the guide and discuss potential issues
  * Project Home includes information about project calls, agendas, past minutes, and instructions on how to participate
  * Project Dashboard shows new and historical issues that have been logged against the specification
  * Propose a Change allows formal submission of requests for change to the specification
* [Change Log](changes.html) lists all of the changes between versions of the guide
 
### Dependencies
{% lang-fragment dependency-table-nontech.xhtml %}

### IP Statements
{% lang-fragment ip-statements.xhtml %}
