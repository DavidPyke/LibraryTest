Instance: ComputableNHSNMeasureLibrary
InstanceOf: PublicHealthMeasureLibrary
Description: "This library contains references to the value sets used for the Computable NHSN Measure"
// We aren't automating anything other than patient impact and hospital capacity, this library
// will be referenced by other NHSN inspired measures but will not be used by them.

* id = "ComputableNHSNMeasureLibrary"
* name = "ComputableNHSNMeasureLibrary"
* url = "http://hl7.org/fhir/uv/saner/Library/ComputableNHSNMeasureLibrary"
* title = "Computable NHSN Patient Impact and Hospital Capacity Measure Library"
* type = LIBTYPE#asset-collection
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.valueCodeableConcept = SCT#840539006 "COVID-19"
* author.name = "HL7 Public Health Workgroup"
* author.telecom.system = #email
* author.telecom.value = "mailto:pher@lists.hl7.org"
* status = #draft

* content[0].id = "BedLocationOperationalStatus"
* content[0].url = Canonical(BedLocationOperationalStatus)
* content[0].title = "Bed Location Operational Status"
* content[0].contentType = #application/fhir+xml

* content[+].id = "COVID19DXICD10"
* content[=].url = Canonical(COVID19DXICD10)
* content[=].title = "COVID19DXICD10"
* content[=].contentType = #application/fhir+xml

ValueSet: BedLocationOperationalStatus
Title: "Bed Location Operational Status"
Description: "This Value Set is used to indicate whether a bed is in use (O), available for use (U), or not available (C) for use."
* ^experimental = false
* http://terminology.hl7.org/CodeSystem/v2-0116#C
* http://terminology.hl7.org/CodeSystem/v2-0116#O
* http://terminology.hl7.org/CodeSystem/v2-0116#U

ValueSet: PatientsOnVentilator
Title: "Observations for Patients on a Ventilator"
Description: "This Value Set identifies patients currently on a ventilator"
* ^experimental = false
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LOINC#19835-8 // Breath rate setting Ventilator synchronized intermittent mandatory
* LOINC#19994-3 // Oxygen/Inspired gas setting [Volume Fraction] Ventilator
* LOINC#20077-4 // Positive end expiratory pressure setting Ventilator
* LOINC#20079-0 // Pressure support setting Ventilator
* LOINC#20103-8 // Tidal volume expired/Plateau pressure --post 1.5-2.0 seconds inspiratory hold on ventilator
* LOINC#20112-9 // Tidal volume setting Ventilator
* LOINC#20115-2 // Tidal volume.spontaneous/Body weight [Volume/mass] --on ventilator
* LOINC#33438-3 // Breath rate mechanical --on ventilator
* LOINC#57655-3 // Tidal volume.exhaled maximum setting Ventilator alarm
* LOINC#76530-5 // Mean pressure Respiratory system airway --on ventilator
* LOINC#19839-0 // Breath rate spontaneous --on ventilator

ValueSet: COVID19DXICD10
Title: "COVID-19 ICD-10"
Description: "This Value Set includes codes describing COVID-19 illness from ICD-10-CM"
* ^experimental = false
* ^version = "20200516"
//* ^url = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1146.1123"
* ^status = #active
* ^date = "2020-05-16T01:00:22-04:00"
* ^publisher = "CSTE Steward"
* ICD10CM#B34.2 "Coronavirus infection, unspecified"
* ICD10CM#B97.2 "Coronavirus as the cause of diseases classified elsewhere"
* ICD10CM#B97.29 "Other coronavirus as the cause of diseases classified elsewhere"
* ICD10CM#U07.1 "COVID-19"