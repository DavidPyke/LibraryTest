
Profile:        PublicHealthMeasureLibrary
Parent:         Library
Title:          "Public Health Measure Library"
Description:    """A Public Health Measure Library contains essential ConceptMap, ValueSet, CodingSystem,
NamingSystem, SearchParameter, CQL definitions or other resources for measure evaluation.
"""
* content only PublicHealthMeasureMetadataAttachment
* content 1..* MS

Profile:        PublicHealthMeasureMetadataAttachment
Parent:         Attachment
Title:          "PublicHealthMeasureMetadataAttachment"
Description:    "Attachments providing resources containing essential content supporting a measure definition"
* id 1..1   // ID is required to support references
* contentType 1..1 MS
* contentType ^short = "application/fhir+xml | application/fhir+json | text/cql | application/gzip"
* contentType ^definition = """FHIR Resources should use application/fhir+xml or application/fhir+json, CQL source files should use text/cql, and FHIR Packages
should use application/gzip.
"""
* contentType from PublicHealthMeasureAttachmentTypes (required)
* data 0..1 MS     // for now, we have no good way to generate this SO
* url 1..1 MS      // we require a url
* title 1..1 MS

ValueSet: PublicHealthMeasureAttachmentTypes
Title: "Public Health Measure Attachment Types"
Description: "Preferred Mime Types for use with Public Health Measure Definitions"
* ^experimental = false
* urn:ietf:bcp:13#application/fhir+xml
* urn:ietf:bcp:13#application/fhir+json
* urn:ietf:bcp:13#text/cql
* urn:ietf:bcp:13#application/gzip