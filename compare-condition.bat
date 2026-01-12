java -jar ../../validator_cli.jar -compare -dest compared -version 4.0 ^
-ig hl7.fhir.eu.base#2.0.0-ballot ^
-ig nictiz.fhir.nl.r4.nl-core#0.12.0-beta.4 ^
-left http://hl7.eu/fhir/base/StructureDefinition/condition-eu-core ^
-right http://nictiz.nl/fhir/StructureDefinition/nl-core-Problem