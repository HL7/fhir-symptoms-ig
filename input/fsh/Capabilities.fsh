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
    * supportedProfile = Canonical(SymptomObservation)
    * interaction[+]
      * code = #search-type
    * interaction[+]
      * code = #read
    * interaction[+]
      * code = #create
    * interaction[+]
      * code = #update
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "value-concept"
      * type = #token
* rest[+]
  * mode = #server
  * resource[+]
    * type = #Observation
    * supportedProfile = Canonical(SymptomObservation)
    * interaction[+]
      * code = #search-type
    * interaction[+]
      * code = #read
    * interaction[+]
      * code = #create
    * interaction[+]
      * code = #update
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "value-concept"
      * type = #token
