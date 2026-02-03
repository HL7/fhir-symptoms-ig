### Overview

#### Purpose and Scope
The purpose of this implementation guide is to standardize the representation and exchange of patient-reported symptoms using FHIR R4 resources. The absence of standardized definitions and formats for symptoms data currently hinders effective sharing across providers, leading to data silos and interruptions in critical diagnostic thinking. This initiative aims to decrease missed, delayed, or inaccurate diagnoses by enhancing the documentation and exchange of symptoms, a crucial step in the diagnostic process.

Symptoms in the context of this guide refer to subjective observations reported by patients or their caregivers about changes in their health status. This guide focuses on capturing what patients report about their experiences, which may include both what clinicians would classify as true symptoms (subjective experiences like pain or fatigue) as well as signs (objective findings that patients observe about themselves, such as a rash or swelling). The semantic intent is to capture the patient’s perspective of their health concerns as they report them, recognizing that patients may not distinguish between symptoms and signs in the way healthcare professionals do.

This implementation guide provides FHIR profiles that structure patient-reported symptom data for seamless exchange across visits and health systems. By standardizing how systems represent key symptom attributes—including severity, onset, duration, location, quality, and other characteristics—this guide supports enhanced recognition of symptom patterns, reduces clinician burden by streamlining the diagnostic process, and ultimately enables more informed diagnostic decision-making to improve patient outcomes.

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

### From Pre-Coordinated to Post-Coordinated: Best Practices for Symptom Data Exchange

Electronic health records (EHRs) and other clinical systems sometimes capture and store symptoms as **pre-coordinated concepts and/or text**, meaning one code combines multiple details—for example, “abdominal pain” includes both the symptom and the body site.

For data exchange, this Implementation Guide (IG) recommends a **post-coordinated approach**. This means breaking down the combined code (decomposition) so the symptom goes in observation.value, while related details—such as body site—are recorded in separate fields. This structure improves flexibility and supports consistent interoperability across systems. See this Table which provides examples of Pre-Coordinated code versus the Post-Coordinated combinations.

It is still necessary for the original pre-coordinated concept to be included in exchange and the FHIR CodableConcept structure allows this by including multiple Codings.  Our recommendation is that a system send the post-coordinated code as one Coding and also send the original concept as another Coding with the Coding.userSelected element set to 'true'.

<table border="1">
  <thead>
  <tr>
    <th colspan="2">Pre-coordinated</th>
    <th>Map to</th>
    <th colspan="4">Post-coordinated</th>
  </tr>
  </thead>
<tbody>
  <tr>
    <td colspan="2">Observation.value</td>
    <td></td>
    <td colspan="2">Observation.value</td>
    <td colspan="2">Observation.bodySite</td>
  </tr>
  <tr>
    <td>coding.code</td>
    <td>coding.display</td>
    <td> </td>
    <td>value.coding.code</td>
    <td>value.coding.display</td>
    <td>coding.code</td>
    <td>coding.display</td>
  </tr>
  <tr>
    <td>51197009</td>
    <td>Stomach cramps (finding)</td>
    <td> </td>
    <td>55300003</td>
    <td>Cramp (finding)</td>
    <td>69695003</td>
    <td>Stomach structure (body structure)</td>
  </tr>
  <tr>
    <td>53430007</td>
    <td>Pain of breast (finding)</td>
    <td> </td>
    <td>22253000</td>
    <td>Pain (finding)</td>
    <td>76752008</td>
    <td>Breast structure (body structure)</td>
  </tr>
  <tr>
    <td>25064002</td>
    <td>Headache (finding)</td>
    <td> </td>
    <td>22253000</td>
    <td>Pain (finding)</td>
    <td>69536005</td>
    <td>Head structure (body structure)</td>
  </tr>
  <tr>
    <td>279039007</td>
    <td>Low back pain (finding)</td>
    <td> </td>
    <td>22253000</td>
    <td>Pain (finding)</td>
    <td>37822005</td>
    <td>Structure of back of abdominopelvic segment of trunk (body structure)</td>
  </tr>
  <tr>
    <td>30473006</td>
    <td>Pain in pelvis (finding)</td>
    <td> </td>
    <td>22253000</td>
    <td>Pain (finding)</td>
    <td>12921003</td>
    <td>Structure of pelvis (body structure)</td>
  </tr>
  <tr>
    <td>23924001</td>
    <td>Tight chest (finding)</td>
    <td> </td>
    <td>299954009</td>
    <td>Tightness sensation (finding)</td>
    <td>51185008</td>
    <td>Thoracic structure (body structure)</td>
  </tr>
  <tr>
    <td>57676002</td>
    <td>Pain of joint (finding)</td>
    <td> </td>
    <td>22253000</td>
    <td>Pain (finding)</td>
    <td>39352004</td>
    <td>Joint structure (body structure)</td>
  </tr>
  <tr>
    <td>21522001</td>
    <td>Abdominal pain (finding)</td>
    <td> </td>
    <td>22253000</td>
    <td>Pain (finding)</td>
    <td>818983003</td>
    <td>Abdomen (body structure)</td>
  </tr>
  <tr>
    <td>29857009</td>
    <td>Chest pain (finding)</td>
    <td> </td>
    <td>22253000</td>
    <td>Pain (finding)</td>
    <td>51185008</td>
    <td>Thoracic structure (body structure)</td>
  </tr>
</tbody></table>


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
