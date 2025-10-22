Complying with this implementation guide means complying with a number of profiles, extensions, value sets and custom search parameters.  This page provides an overview of where this information can be found.

These FHIR artifacts define the data that can be submitted as part of the required Consent operations.

The artifacts are of five types:

* [Profiles]({{site.data.fhir.path}}profiling.html) constrain FHIR resources to reflect requirements for representing Symptoms
* [Extensions]({{site.data.fhir.path}}extensibility.html) define additional data elements that can be conveyed as part of a resource
* [Code Systems]({{site.data.fhir.path}}codesystem.html) define guide-specific terminologies to be used in one or more of those profiles
* [Value Sets]({{site.data.fhir.path}}valueset.html) define the specific subsets of code systems that can be (or are recommended to be) used within one or more profile elements

[Terminology Artifacts](terminology.html) can be found on its own page.

### Guide Artifacts

#### Capability Statements
* [Symptom System Capabilities](CapabilityStatement-SymptomCapabilities.html) - Required for systems exchanging Symptoms

#### Symptoms Logical Model
* [Symptoms Logical Model](StructureDefinition-SymptomLogicalModel.html) - {{site.data.StructureDefinition-SymptomLogicalModel.description}}

#### Profiles
##### Symptom Profiles
* [Symptom Observation](StructureDefinition-SymptomObservation.html) - {{site.data.StructureDefinition-SymptomObservation.description}}
* [Symptom Absent Observation](StructureDefinition-SymptomAbsentObservation.html) - {{site.data.StructureDefinition-SymptomAbsentObservation.description}}

##### Assessment Scale Profiles
* [Assessment Scale Collection](StructureDefinition-AssessmentScaleCollection.html) - {{site.data.StructureDefinition-AssessmentScaleCollection.description}}
* [Assessment Scale Observation](StructureDefinition-AssessmentScaleObservation.html) - {{site.data.StructureDefinition-AssessmentScaleObservation.description}}
* [Functional Assessment Collection](StructureDefinition-FunctionalAssessmentCollection.html) - {{site.data.StructureDefinition-FunctionalAssessmentCollection.description}}
* [Functional Assessment Observation](StructureDefinition-FunctionalAssessmentObservation.html) - {{site.data.StructureDefinition-FunctionalAssessmentObservation.description}}


##### Extensions
{% include ext-list-generator.md use="profile" %}

#### Examples
The following examples are present in this guide to show specific use cases:

* [Shortness of Breath](Observation-ShortnessOfBreathSymptom.html)
* [Absence of Fever](Observation-FeverSymptomAbsence.html)


### Cross-Version Analysis
{% lang-fragment cross-version-analysis.xhtml %}

### Global Profiles

{% lang-fragment globals-table.xhtml %}
