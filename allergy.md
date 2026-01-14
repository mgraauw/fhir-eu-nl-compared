# Comparison of allergy profiles

Left: [Allergy Intolerance (EU core)](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-allergyIntolerance-eu-core.html) (R4)
Right: [nl core AllergyIntolerance](https://simplifier.net/nictiz-r4-zib2020/nlcoreallergyintolerance) (R4)

[Validator diff](./compared/index-allergy.html)

## Findings

### Metadata differences

- names, titles and urls differ: not important
- eu status is active, nl draft

### AllergyIntolerance

Only attributes with differences or comments are included here.

- language has different binding: not important
- clinicalStatus: binding nakijken
- AllergyIntolerance.category: 
  - eu has ..*, nl has ..1
    - change in nl to accommodate eu-resources
  - nl has extension with different codes
    - will be missing in eu resources
    - no CPEU
- criticality: 
  - different binding
  - no CPEU
- code:
  - is 1..1 in eu, 0..1 in nl
    - change nl to 1..1?
    - or CP to EU to accommodate uncoded allergies (history)?
  - different bindings:
    - eu binding: IPS, eHDSI, WHO: preferred or additional
    - nl binding: VeroorzakendeStofCodelijsten: required
      - CPNL? change to preferred to allow eu bindings too?
      - should await LM/zib decisions
- patient
  - nl to Patient nl-core, eu to eu-core
    - must we harmonize this? i.e. allow eu-core Patient in our profiles?
- note:
  - eu has 0..*, nl has 0..1
    - CPNL? to 0..*?
    - is related to zib 'Comment' which is 0..1 but 0..1 notes can be concatenated into 1 Comment
- reaction.substance:
  - eu has example binding (eHDSI), nl has SpecifiekeStofCodelijsten required
    - CPNL? to preferred to allow other bindings?
- reaction.manifestation:
  - eu has preferred binding to IPS, nl has extensible binding to SymptoomCodelijst
    - see if this differs in practice
    - is more LM-ZIB issue
- reaction.severity:
  - mapping to MateVanKritiekZijn, maar binding is hetzelfde
- reaction.exposureRoute
  - eu heeft example binding to Snomed, nl WijzeVanBlootstellingCodelijst required
  - CPNL? to make binding preferred?

Completed