Instance: SymptomCapabilities
InstanceOf: CapabilityStatement
Title: "Symptom System Capabilities"
Description: "Capabilities required for a system exchanging symptoms data."
Usage: #definition
* url = Canonical(SymptomCapabilities)
* name = "SymptomsSystem"
* status = #active
* experimental = false
* date = "2025-01-01"
* description = "Capabilities required for a system exchanging symptoms data."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml
* rest[0]
  * mode = #client
  * resource[+]
    * type = #Observation
    * supportedProfile[+] = Canonical(SymptomObservation)
    * supportedProfile[+] = Canonical(SymptomAbsentObservation)
    * interaction[+]
      * code = #search-type
    * interaction[+]
      * code = #read
    * interaction[+]
      * code = #create
    * interaction[+]
      * code = #update
    * searchParam[+]
      * name = "category"
      * type = #token
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "code-value-concept"
      * type = #composite
    * searchParam[+]
      * name = "date"
      * type = #date
* rest[+]
  * mode = #server
  * resource[+]
    * type = #Observation
    * supportedProfile[+] = Canonical(SymptomObservation)
    * supportedProfile[+] = Canonical(SymptomAbsentObservation)
    * interaction[+]
      * code = #search-type
    * interaction[+]
      * code = #read
    * interaction[+]
      * code = #create
    * interaction[+]
      * code = #update
    * searchParam[+]
      * name = "category"
      * type = #token
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "code-value-concept"
      * type = #composite
    * searchParam[+]
      * name = "date"
      * type = #date
