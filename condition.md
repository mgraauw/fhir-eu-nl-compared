# Comparison of condition

Left: eu
Richt: nl-core

[Validator diff](./compared/index-condition.html)

## Findings

### Condition

Only attributes with differences or comments are included here.

- clinicalStatus
  - nl has required binding to ProbleemStatusCodelijst which allows only active/inactive, eu has default FHIR (6) codes
  - CP-NL? change binding from required to preferred?
- code: 
  - is 1..1 in eu, 0..1 in nl
    - change nl to 1..1?
    - or CP to EU to accommodate unencoded allergies (history)?