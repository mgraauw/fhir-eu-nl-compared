# Comparison of condition

Left: eu
Richt: nl-core

[Validator diff](./compared/index-condition.html)

## Findings

### Condition

Only attributes with differences or comments are included here.

- clinicalStatus
  - nl has required binding to ProbleemStatusCodelijst which allows only active/inactive, eu has default FHIR (6) codes
  - CPNL? change binding from required to preferred?
- verificationStatus
  - eu has standard FHIR list 
  - nl has required binding to smaller ConditionVerificationStatus
    - CPNL? change binding to preferred?
- category
  - nl has binding ProbleemTypeCodelijst (required)
  - CPNL? change binding to preferred?
- severity
  - nl has preferred binding to Condition/DiagnosisSeverity
  - eu has standard FHIR list
  - this should work since nl is preferred
- code: 
  - is 1..1 in eu, 0..1 in nl
    - change nl to 1..1?
    - or CP to EU to accommodate unencoded allergies (history)?
- bodySite
  - cardinality is 0..* in eu, 0..1 in nl
  - CPNL? change to 0..*
- note:
  - eu has 0..*, nl has 0..1
    - CPNL? to 0..*?
    - is related to zib 'Comment' which is 0..1 but 0..1 notes can be concatenated into 1 Comment