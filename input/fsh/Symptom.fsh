Profile: SymptomObservation
Parent: Observation
Id: SymptomObservation
Description: "The Symptom observation contains all information given about a patient's symptoms."
Title: "Symptom Observation"

* identifier 1..1 MS
* status 1..1 MS
* code 1..1 MS
  * ^short = "Coded description of symptom"
* code from https://hl7.org/fhir/ValueSet/clinical-findings (example)
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* performer 1..1 MS
  * ^short = "The person who is reporting the symptom information"
* performer only Reference(Patient or RelatedPerson)
* value[x] 1..1 MS
  * ^short = "Indicates whether the patient has the symptom or not"
* value[x] only CodeableConcept
* value[x] from https://loinc.org/LL365-8 (required)
* note MS
  * ^short = "Patient or caregiver description of symptom"
* bodySite MS
  * ^short = "Where the patient feels the symptom in the body"
* bodySite from http://loinc.org/vs/LL5065-9 (example)
* component 0..* MS 
  * ^short = "Various information about the symptom"
  * code 1..1 MS
  * value[x] 1..1 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Different symptom component observations"
* component contains quality 0..1 MS and
                     severity 0..1 MS and
                     functionalImpact 0..* MS and
                     clinicalCourse 0..1 MS and
                     trend 0..1 MS and
                     affectiveGrade 0..1 MS
                     
* component[quality] ^short = "The patient's internal perception of the symptom" 
  * code = http://loinc.org#32419-4 "Pain quality"
    * ^short = "Code for the specific scale or assessment (if any) used to determine the quality" 
  * value[x] only CodeableConcept
    * ^short = "Code that represents the symptom quality" 
  * valueCodeableConcept from http://loinc.org/vs/LL4459-5 (example)
* component[severity] ^short = "The intensity with which the patient experiences the symptom"
  * code = http://loinc.org#64750-3 "Severity of symptoms"
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://loinc.org/vs/LL1156-0 (example)
* component[functionalImpact] ^short = "How the symptom affects the patient's daily activities" 
  * code from FunctionalFinding (example)
    * ^short = "Code for the specific scale or assessment if any used to determine the severity" 
  * value[x] only CodeableConcept
    * ^short = "Code that represents the symptom severity" 
  * valueCodeableConcept from http://loinc.org/vs/LL365-8 (required)
* component[clinicalCourse] ^short = "Character of symptom onset" 
  * ^comment = "Term to represent both the course and onset of a disease. Many conditions with an acute (sudden) onset also have an acute (short duration) course."
  * code = http://loinc.org#89261-2 "Clinical course"
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://loinc.org/vs/LL4997-4 (example)
* component[trend] ^short = "Intensity of symptom over time"
  * ^comment = "Whether a condition is improving, worsening, stable, or resolved."
  * code = http://loinc.org#89253-9 "Trend"
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://loinc.org/vs/LL4938-8 (example)
* component[affectiveGrade] ^short = "Emotional or mental impact of a symptom" 
  * code = http://snomed.info/sct#279116004 "Affective response to pain"
  * value[x] only CodeableConcept
    * ^short = "Code that represents the affective grade" 
  * valueCodeableConcept from AffectiveGrade (example)


ValueSet: FunctionalFinding
Id: FunctionalFinding
Title: "Functional Impact"
Description: "Set of codes from SNOMED CT that describe different functional impact observations"
* ^copyright = """This value set includes content from SNOMED CT, which is copyright Â© 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CTÂ®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""
* ^experimental = true
* codes from system http://snomed.info/sct where concept is-a "118228005"

ValueSet: AffectiveGrade
Id: AffectiveGrade
Title: "Affective Grade"
Description: "Set of codes from LOINC that describe a patient's affective grade"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINCÂ® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = true
* codes from system http://loinc.org where concept is-a "75798-9"
