#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the combination of the **`patient`** and **`category`** search parameters:

    `GET [base]/Observation?patient={Type/}[id]&category={system|}[code]`

    Example:

      1. GET [base]/Observation?patient=1134281&amp;category=http://terminology.hl7.org/CodeSystem/observation-category\|symptom
      
    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient and a category code = `symptom` ([how to search by reference](https://hl7.org/fhir/R4/search.html#reference) and [how to search by token](https://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **`patient`** and **`code`** search parameters:
    `GET [base]/Observation?patient={Type/}[id]&code={system|}[code]`

    Example:

      1. GET [base]/Observation?patient=1134281&amp;code=http://loinc.org\|75325-1

    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient and observation code ([how to search by reference](https://hl7.org/fhir/R4/search.html#reference) and [how to search by token](https://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **`patient`** and **`code-value-concept`** search parameters:
    `GET [base]/Observation?patient={Type/}[id]&code-value-concept={system|}[code]${system|}[code]`

    Example:

      1. GET [base]/Observation?patient=1134281&amp;code-value-concept=http://loinc.org\|75325-1$http://www.snomed.info/sct/|51197009

    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient and observation code and symptom code ([how to search by reference](https://hl7.org/fhir/R4/search.html#reference) and [how to search by composite](https://hl7.org/fhir/R4/search.html#combining))

1. **SHALL** support searching using the combination of the **`patient`** and **`code-value-concept`** and **`date`** search parameters:
    - including support for these `date` comparators: `gt,lt,ge,le`
    - including optional support for *AND* search on `date` (e.g.`date=[date]&date=[date]]&...`)

    `GET [base]/Observation?patient={Type/}[id]&code-value-concept={system|}[code]${system|}[code]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:

      1. GET [base]Observation?patient=555580&amp;code-value-concept=http://loinc.org\|75325-1$http://www.snomed.info/sct/|51197009&amp;date=ge2018-03-14T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient and date and observation code and symptom code ([how to search by reference](https://hl7.org/fhir/R4/search.html#reference) and [how to search by composite](https://hl7.org/fhir/R4/search.html#combining) and [how to search by date](https://hl7.org/fhir/R4/search.html#date))
