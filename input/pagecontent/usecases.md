# Use Cases

## Introduction

The following use cases illustrate how patient-reported symptoms are captured, documented, and exchanged using the profiles defined in this implementation guide. Each scenario demonstrates the interaction between patients (or their caregivers), clinical staff, and health information systems as symptom information flows through different care settings and clinical workflows.

These use cases reflect real-world scenarios where patients describe their subjective experiences of health changes to healthcare providers or directly into patient-facing systems. The symptoms described represent what patients report about their conditions—including both what clinicians would classify as symptoms (subjective sensations like pain or dizziness) and signs (observable findings that patients notice about themselves, such as fever or visible swelling). The focus is on capturing the **patient’s perspective and narrative** as they communicate their health concerns.

Each use case demonstrates:

- **Patient reporting**: How patients describe their symptoms to clinical staff or enter them into systems
- **Clinical documentation**: How healthcare providers capture and structure symptom information using discrete data elements
- **Data exchange**: How symptom information can be shared across care settings and retrieved for clinical decision support
- **System search capabilities**: How structured symptom data enables querying and pattern recognition across patient encounters

The use cases span multiple clinical domains—emergency care, primary care, public health surveillance, and oncology—to illustrate the broad applicability of standardized symptom documentation across healthcare settings.

-----

## Use Case 1: Chest Pain and Shortness of Breath - Emergency Department Presentation

### Clinical Context

This use case demonstrates how patient-reported symptoms evolve from initial triage through detailed physician assessment in an emergency department setting, and how discrete symptom data can support both immediate clinical decision-making and longitudinal pattern recognition.

### Patient-Provider Interaction

Jane Doe, a 60-year-old English-speaking Latina woman with a history of [type 2 diabetes mellitus](Condition-Type2DiabetesMellitus.html) and hypertension, arrives at the emergency department and reports to the triage nurse: *“For the last six weeks, I have been getting so winded when I have been walking upstairs.”*

The triage nurse captures this patient-reported symptom in the EHR system, documenting:

- **Chief complaint**: Shortness of breath
- **Symptom details** reported by patient: Onset 6 weeks ago, occurs with exertion (walking upstairs), resolves with rest

The system structures this information using the [shortness of breath symptom profile](Observation-ShortnessOfBreathSymptom.html), enabling the symptom to be discretely captured with timing, precipitating factors, and alleviating factors as the patient described them. The patient’s vital signs are also documented: blood pressure 162/90, respiratory rate 18, pulse 84, oxygen saturation 97% on room air, and temperature 98.2°F.

One hour later, during the physician assessment, Jane provides additional detail about her symptoms. She tells the physician: *“Yesterday when I was chasing my 5-year-old son up the stairs, I got really short of breath and then I felt like an elephant was sitting on my chest. The chest pain lasted about 20 minutes. That’s never happened before, so I came to the ER.”*

The physician captures this expanded symptom narrative, documenting:

- **Updated shortness of breath details**: Most recent episode yesterday, triggered by running upstairs, lasted approximately 5 minutes
- **New symptom**: [Chest pain](Observation-ChestPainSymptom.html) - first episode ever, described as “crushing” or “like an elephant sitting on my chest,” duration 20 minutes, no radiation
- **Associated symptoms**: Dizziness and light-headedness concurrent with shortness of breath and chest pain
- **Absent symptoms**: Patient denies [fever](Observation-FeverSymptomAbsence.html), [chills](Observation-ChillSymptomAbsence.html), cough, or syncope

### System Capabilities Demonstrated

- Discrete capture of patient-described symptom characteristics (quality, timing, severity, precipitating/alleviating factors)
- Documentation of symptom evolution over time (6 weeks of exertional dyspnea progressing to acute chest pain)
- Recording of both present and explicitly absent symptoms to support differential diagnosis
- Structured data that can be queried for clinical decision support (e.g., identifying patients with chest pain plus dyspnea for acute coronary syndrome protocols)

-----

## Use Case 2: Dizziness - Primary Care Office Visit

### Clinical Context

This use case illustrates detailed symptom characterization in an outpatient setting, where the patient provides a comprehensive description of symptom quality, timing, duration, and associated/absent symptoms to help guide diagnostic workup.

### Patient-Provider Interaction

Mr. John Doe, a 72-year-old male, schedules an appointment with his primary care physician and reports: *“I’ve been having dizziness that’s been getting worse over the past 3 weeks. It feels like I’m light-headed and the room is spinning, especially when I stand up.”*

During the clinical interview, the physician asks clarifying questions and Mr. Doe provides additional details:

- **Symptom quality**: “Light-headedness” and “room spinning” sensation
- **Timing**: Multiple times throughout the day, particularly with positional changes (standing from sitting, walking)
- **Duration**: Each episode lasts seconds to one minute
- **Alleviating factors**: Sitting down or remaining still
- **Associated symptoms**: Mild [hearing loss](Observation-HearingLossSymptom.html) in right ear for several months
- **Absent symptoms**: No [fainting](Observation-FaintingSymptomAbsence.html), [loss of consciousness](Observation-UnconsciousnessSymptomAbsence.html), [nausea](Observation-NauseaSymptomAbsence.html), vomiting, tinnitus, visual changes, headache, chest pain, or shortness of breath
- **Functional impact**: Patient reports slight decrease in ability to perform daily activities but can still walk short distances

The physician documents this information using the [dizziness symptom profile](Observation-DizzinessSymptom.html), capturing all the discrete elements the patient reported. This structured documentation enables the symptom pattern to be recognized and compared with previous or future encounters.

### System Search Example

If this patient later presents to an emergency department, a provider could query the health information exchange for “patients with dizziness AND hearing loss” to quickly retrieve this documented symptom pattern and avoid duplicative history-taking.

-----

## Use Case 3: Public Health Surveillance - Novel Influenza Presentation

### Clinical Context

This use case demonstrates how patient-reported symptoms in an acute respiratory illness can support both individual clinical care and public health surveillance when symptoms are captured in standardized, exchangeable formats.

### Patient-Provider Interaction

Trish Doe, a 45-year-old previously healthy female, presents to the emergency department and reports to the triage nurse: *“I’ve had a terrible cough and can’t catch my breath for three days now. My fever has been 102.5°F, and I feel absolutely exhausted.”*

The ED nurse captures the patient’s reported symptoms:

- **Duration**: 3 days
- **Respiratory symptoms**: [Cough](Observation-CoughSymptom.html), [shortness of breath](Observation-ShortnessOfBreathPHSymptom.html)
- **Constitutional symptoms**: [High fever (102.5°F)](Observation-FeverSymptom.html), [fatigue](Observation-FatigueSymptom.html), chills, generalized myalgia
- **Symptom progression**: Patient describes symptoms starting as “mild nasal congestion and sore throat but rapidly progressed to respiratory distress”
- **Exposures**: Recent international travel, no known sick contacts

The system captures these structured symptom observations, which are then available for:

- **Clinical decision support**: Triggering respiratory distress protocols based on documented shortness of breath and fever
- **Public health reporting**: Automated identification of patients with symptom patterns matching novel influenza surveillance case definitions
- **Longitudinal tracking**: Monitoring symptom progression from mild upper respiratory symptoms to severe respiratory distress

As the patient’s condition evolves during hospitalization, clinical staff continue to document changes in symptoms and their severity, creating a longitudinal symptom record that supports both individual care coordination and population-level outbreak detection.

**Clinical Course**: On examination, she appears ill and mildly diaphoretic. Her respiratory rate is 26 breaths per minute, and oxygen saturation is 89% on room air. Auscultation reveals diffuse bilateral crackles without wheezing. A chest X-ray demonstrates patchy ground-glass opacities. Influenza PCR testing identifies a novel strain of influenza A. Given the rapid progression, there is concern for viral pneumonia and acute respiratory distress syndrome (ARDS). The patient is admitted for supportive care, including oxygen therapy, antiviral treatment with neuraminidase inhibitors, and close monitoring for signs of respiratory failure.

Given the patient’s worsening respiratory distress and concerning oxygen saturation, the emergency department physician orders further radiological evaluation. A CT scan of the chest reveals diffuse bilateral ground-glass opacities and areas of consolidation. No signs of bacterial superinfection are noted, but the severity of lung involvement prompts immediate escalation of care.

The patient is transferred to the intensive care unit (ICU) for closer monitoring and potential need for advanced respiratory support. Upon arrival, her respiratory status deteriorates further, with increased work of breathing and persistent hypoxia despite supplemental oxygen. The decision is made to initiate high-flow nasal cannula therapy, with plans for mechanical ventilation should her condition fail to improve.

A multi-disciplinary team, including infectious disease specialists and pulmonary critical care providers, collaborates on management. Empirical antiviral therapy with a neuraminidase inhibitor is continued, and broad-spectrum antibiotics are considered to cover for potential secondary bacterial infections. Close monitoring for cytokine storm and multi-organ involvement is underway, as novel strains of influenza have been known to trigger systemic complications.

Over the next 48 hours, her condition remains guarded, with fluctuating oxygen demands and evolving laboratory markers indicative of systemic inflammation. The ICU team remains on high alert, ready to intervene as necessary.

-----

## Use Case 4: Oncology - Progressive Gastrointestinal Symptoms

### Clinical Context

This use case illustrates how patient-reported symptom progression over weeks to months can be captured discretely to support pattern recognition and appropriate escalation of care, from primary care to specialty consultation to acute presentation.

### Initial Primary Care Visit - Patient-Provider Interaction

Mr. Doe visits his primary care physician and describes: *“I’ve been constipated for about two months now. I’m only going every 2-3 days, and when I do go, it’s hard and I have to strain. I’ve also been feeling more tired than usual.”*

The physician documents the patient’s reported symptoms:

- **Primary symptom**: [Constipation](Observation-ConstipationSymptom.html) - intermittent, progressively worsening over 2 months
- **Bowel pattern changes**: From daily to every 2-3 days, hard pellet-like stools, straining, sensation of incomplete evacuation
- **Associated symptoms**: Mild bloating, vague lower [abdominal discomfort](Observation-AbdominalDiscomfortSymptom.html) (non-radiating, evening occurrence), increased fatigue
- **Absent symptoms**: No [rectal bleeding](Observation-RectalBleedingSymptomAbsence.html), melena, weight loss, or appetite changes reported

The patient is counseled on dietary modifications, increased fluid intake, and physical activity. He drinks 4-5 glasses of water per day and consumes a moderate-fiber diet. Physical activity is limited to occasional weekend walks. Patient has not tried over-the-counter laxatives yet.

### Follow-up Visit (6 weeks later) - Patient-Provider Interaction

Despite adoption of interventions recommended by his PCP, Mr. Doe returns and reports: *“The constipation is worse even though I’ve been using laxatives like you suggested. Now I’m having cramping pain on my left side when I try to go, and I’ve lost about 8 pounds without trying. I’m just not hungry anymore.”*

The physician updates the symptom documentation:

- **Worsening constipation**: Despite laxative use, now with tenesmus, rectal fullness, straining
- **New symptom**: [Abdominal cramping pain](Observation-AbdominalPainSymptom.html) - left lower quadrant, occurs with bowel movement attempts or feeling of needing to pass stool, 4/10 severity, non-radiating
- **New constitutional symptoms**: Marked fatigue, decreased stamina, occasional lightheadedness, appetite decline (patient denies early satiety or globus sensation, “just does not feel like eating”), [unintentional weight loss](Observation-WeightLossSymptom.html) of 8 pounds over 3 months
- **Absent symptoms**: Patient denies fever, chills, nausea, or vomiting

### System Search Example

A gastroenterology consultant accessing Mr. Doe’s records could query for “progressive constipation AND weight loss AND abdominal pain” to quickly retrieve this symptom timeline, supporting appropriate diagnostic planning (colonoscopy ordered).

### Emergency Department Presentation - Patient-Provider Interaction

Mr. Doe was evaluated by outpatient GI and underwent a colonoscopy, which revealed a partially obstructing mass in the sigmoid colon. Biopsies were taken, and pathology confirmed adenocarcinoma. He was awaiting oncology follow-up when he developed acute symptoms.

Mr. Doe presents to the ED and reports: *“I haven’t been able to pass anything for 48 hours, and the pain is excruciating—10 out of 10.”*

ED staff document:

- **Acute symptom**: Severe abdominal pain, lower quadrants, cramping quality, 10/10 severity [without medication](Observation-UnmedicatedAbdominalPainSymptom.html)
- **Symptom response to treatment**: Pain decreased to 8/10 [after IV morphine administration](Observation-MedicatedAbdominalPainSymptom.html)
- **Associated findings**: Complete inability to pass stool or flatus for 48 hours

### System Capabilities Demonstrated

- Longitudinal symptom tracking across multiple encounters and care settings
- Documentation of symptom progression and evolution (from mild intermittent constipation to acute bowel obstruction)
- Capturing patient-reported symptom severity and treatment response
- Enabling pattern recognition queries that could support earlier diagnostic workup in similar presentations

-----

## Use Case 5: Clinical Decision Support - Symptom Pattern Query

### Clinical Context

This use case demonstrates how structured symptom data enables clinical decision support and diagnostic pattern recognition across a patient population.

### Scenario

A healthcare system’s quality improvement team wants to identify patients who may have undiagnosed heart failure to facilitate earlier intervention. Using the structured symptom data captured in the symptom profiles, the system can execute queries such as:

**Query Example 1**: “Identify patients with documented shortness of breath (dyspnea) that is triggered by exertion AND has associated symptoms of fatigue or lower extremity swelling, occurring over the past 6 months”

**Query Example 2**: “Retrieve all symptom observations for Patient X across all encounters in the past year to identify symptom patterns”

**Query Example 3**: “Find patients presenting to the ED with chest pain AND shortness of breath in the past 24 hours” (for rapid response protocol activation)

Because symptoms are captured using standardized FHIR profiles with discrete data elements (symptom code, timing, severity, precipitating factors, associated symptoms), these queries can return actionable result sets that support:

- Population health management
- Clinical decision support algorithms
- Quality measure reporting
- Research and surveillance initiatives

### System Capabilities Demonstrated

- Ability to search across symptom observations using coded values and attributes
- Support for complex queries combining multiple symptom characteristics
- Retrieval of longitudinal symptom data across care settings
- Enablement of population-level analytics and pattern recognition
