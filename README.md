# FHIR eu-nl-compared

Comparisons between eu-core and nl-core FHIR IG.

## Approach

- a diff is done using the [FHIR Validator: ComparingProfiles](https://confluence.hl7.org/spaces/FHIR/pages/35718580/Using+the+FHIR+Validator#UsingtheFHIRValidator-ComparingProfiles)
- diff is always:
  - Left: eu-core (R4)
  - Right: nl-core (R4)
- the diff is inspected and only noteworthy issues are in a resource.md file (i.e. condition.md)
- the diffs are listed below
- noteworthy items are marked:
  - CPEU: Change proposal to eu-core
  - CPNL: Change proposal to nl-core
  - with optional ?, i.e. CPNL? means Change proposal is still to be discussed
  - ZIB: this is a zib or logical model issue
- noteworthy changes:
  - this is NOT about zib to XtEHR Logical Model comparison, that is done in the Nictiz XtEHR project, in which varuois stakeholder are involved
  - i.e. in the FHIR eu-nl-compared we dot not mark:
    - information items missing in either one if those are in the XtEHR
    - differences in the information items common to zib and LM
    - unless those have specific repercussions for FHIR
  - we DO mark:
    - differences in cardinalities, bindings, datatypes (those must be aligned between nl- and eu-core)
    - other FHIR specific findings
    - each finding should lead to a change proposal to EU or nl-core or deemed insignificant, or it is a ZIB issue, marked here only for completeness

FHIR Validator diff notes:

- note that the diff does not mark binding differences in the Messages section, and the bindings for nl-core are often much stricter, those must be manually inspected
- the diff has metadata differences (in Messages, i.e. StructureDefinition.name and in Metadata section), those can be ignored since those are mostly obvious

## Overview of profiles

(not complete yet)

[Condition](condition.md)
[AllergyIntolerance](allergy.md)

## General findings

- nl-core often has required bindings to zib valuesets, whereas eu-core has preferred or example bindings
  - should we change nl-core bindings to preferred to accommodate eu-core resources?
  - possibly this means we need strict nl-core profiles to test strict zib-compliance and more relaxed profiles to support EHDS resources
  - note that strict zib-compliant nl-core profiles do not allow historical non-zib-compliant resources
