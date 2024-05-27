cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  influenza-infection-primary-care-polysaccaride---primary:
    run: influenza-infection-primary-care-polysaccaride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  influenza-infection-primary-care-reaction---primary:
    run: influenza-infection-primary-care-reaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-polysaccaride---primary/output
  influenza-infection-primary-care-bronchopneumonia---primary:
    run: influenza-infection-primary-care-bronchopneumonia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-reaction---primary/output
  influenza-infection-primary-care-manifestationsflu---primary:
    run: influenza-infection-primary-care-manifestationsflu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-bronchopneumonia---primary/output
  therapeutic-influenza-infection-primary-care---primary:
    run: therapeutic-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-manifestationsflu---primary/output
  ribonucleic-influenza-infection-primary-care---primary:
    run: ribonucleic-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: therapeutic-influenza-infection-primary-care---primary/output
  influenza-infection-primary-care-advice---primary:
    run: influenza-infection-primary-care-advice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ribonucleic-influenza-infection-primary-care---primary/output
  influenza-infection-primary-care-vaccine---primary:
    run: influenza-infection-primary-care-vaccine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-advice---primary/output
  influenza-infection-primary-care-chest---primary:
    run: influenza-infection-primary-care-chest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-vaccine---primary/output
  influenza-infection-primary-care-group---primary:
    run: influenza-infection-primary-care-group---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-chest---primary/output
  influenza-infection-primary-care-contraindicated---primary:
    run: influenza-infection-primary-care-contraindicated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-group---primary/output
  zoonotic-influenza-infection-primary-care---primary:
    run: zoonotic-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-contraindicated---primary/output
  pharmacist-influenza-infection-primary-care---primary:
    run: pharmacist-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: zoonotic-influenza-infection-primary-care---primary/output
  influenza-infection-primary-care-consent---primary:
    run: influenza-infection-primary-care-consent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: pharmacist-influenza-infection-primary-care---primary/output
  influenza-infection-primary-care-identified---primary:
    run: influenza-infection-primary-care-identified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-consent---primary/output
  influenza-infection-primary-care-subtype---primary:
    run: influenza-infection-primary-care-subtype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-identified---primary/output
  influenza-infection-primary-care-vaccination---primary:
    run: influenza-infection-primary-care-vaccination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-subtype---primary/output
  influenza-infection-primary-care-split---primary:
    run: influenza-infection-primary-care-split---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-vaccination---primary/output
  influenza-infection-primary-care-level---primary:
    run: influenza-infection-primary-care-level---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-split---primary/output
  influenza-infection-primary-care-human---primary:
    run: influenza-infection-primary-care-human---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-level---primary/output
  influenza-infection-primary-care-flulike---primary:
    run: influenza-infection-primary-care-flulike---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-human---primary/output
  influenza-infection-primary-care-exposure---primary:
    run: influenza-infection-primary-care-exposure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-flulike---primary/output
  influenza-infection-primary-care-encephalitis---primary:
    run: influenza-infection-primary-care-encephalitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-exposure---primary/output
  influenza-infection-primary-care-provider---primary:
    run: influenza-infection-primary-care-provider---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-encephalitis---primary/output
  influenza-infection-primary-care-contact---primary:
    run: influenza-infection-primary-care-contact---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-provider---primary/output
  encephalopathy-influenza-infection-primary-care---primary:
    run: encephalopathy-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-contact---primary/output
  influenza-infection-primary-care-chapter---primary:
    run: influenza-infection-primary-care-chapter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: encephalopathy-influenza-infection-primary-care---primary/output
  influenza-infection-primary-care-invitation---primary:
    run: influenza-infection-primary-care-invitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-chapter---primary/output
  influenza-infection-primary-care-given---primary:
    run: influenza-infection-primary-care-given---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-invitation---primary/output
  influenza-infection-primary-care-virion---primary:
    run: influenza-infection-primary-care-virion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-given---primary/output
  influenza-infection-primary-care-detected---primary:
    run: influenza-infection-primary-care-detected---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-virion---primary/output
  influenza-infection-primary-care-antibody---primary:
    run: influenza-infection-primary-care-antibody---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-detected---primary/output
  influenza-infection-primary-care-bronchitis---primary:
    run: influenza-infection-primary-care-bronchitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-antibody---primary/output
  influenza-infection-primary-care-close---primary:
    run: influenza-infection-primary-care-close---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-bronchitis---primary/output
  influenza-infection-primary-care---primary:
    run: influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-close---primary/output
  influenza-infection-primary-care-first---primary:
    run: influenza-infection-primary-care-first---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care---primary/output
  influenza-infection-primary-care-pharyngitis---primary:
    run: influenza-infection-primary-care-pharyngitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-first---primary/output
  influenza-infection-primary-care-unspecified---primary:
    run: influenza-infection-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-pharyngitis---primary/output
  influenza-infection-primary-care-protein---primary:
    run: influenza-infection-primary-care-protein---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-unspecified---primary/output
  influenza-infection-primary-care-surface---primary:
    run: influenza-infection-primary-care-surface---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-protein---primary/output
  common-influenza-infection-primary-care---primary:
    run: common-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-surface---primary/output
  pandemic-influenza-infection-primary-care---primary:
    run: pandemic-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: common-influenza-infection-primary-care---primary/output
  influenza-infection-primary-care-haemophilus---primary:
    run: influenza-infection-primary-care-haemophilus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: pandemic-influenza-infection-primary-care---primary/output
  influenza-infection-primary-care-meningitis---primary:
    run: influenza-infection-primary-care-meningitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-haemophilus---primary/output
  influenza-infection-primary-care-pasteur---primary:
    run: influenza-infection-primary-care-pasteur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-meningitis---primary/output
  influenza-infection-primary-care-hepatitis---primary:
    run: influenza-infection-primary-care-hepatitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-pasteur---primary/output
  seasonal-influenza-infection-primary-care---primary:
    run: seasonal-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-hepatitis---primary/output
  influenza-infection-primary-care-serology---primary:
    run: influenza-infection-primary-care-serology---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: seasonal-influenza-infection-primary-care---primary/output
  quadrivalent-influenza-infection-primary-care---primary:
    run: quadrivalent-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-serology---primary/output
  influenza-infection-primary-care-suspected---primary:
    run: influenza-infection-primary-care-suspected---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: quadrivalent-influenza-infection-primary-care---primary/output
  influenza-infection-primary-care-history---primary:
    run: influenza-infection-primary-care-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-suspected---primary/output
  influenza-infection-primary-care-antigen---primary:
    run: influenza-infection-primary-care-antigen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-history---primary/output
  influenza-infection-primary-care-second---primary:
    run: influenza-infection-primary-care-second---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-antigen---primary/output
  influenza-infection-primary-care-septicaemia---primary:
    run: influenza-infection-primary-care-septicaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-second---primary/output
  influenza-infection-primary-care-hib---primary:
    run: influenza-infection-primary-care-hib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-septicaemia---primary/output
  possible-influenza-infection-primary-care---primary:
    run: possible-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-hib---primary/output
  influenza---primary:
    run: influenza---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: possible-influenza-infection-primary-care---primary/output
  allergy-influenza-infection-primary-care---primary:
    run: allergy-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: influenza---primary/output
  influenza-infection-primary-care-inactivated---primary:
    run: influenza-infection-primary-care-inactivated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: allergy-influenza-infection-primary-care---primary/output
  influenza-infection-primary-care-strain---primary:
    run: influenza-infection-primary-care-strain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-inactivated---primary/output
  trivalent-influenza-infection-primary-care---primary:
    run: trivalent-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-strain---primary/output
  influenza-infection-primary-care-influenzalike---primary:
    run: influenza-infection-primary-care-influenzalike---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: trivalent-influenza-infection-primary-care---primary/output
  influenza-infection-primary-care-involvement---primary:
    run: influenza-infection-primary-care-involvement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-influenzalike---primary/output
  influenza-infection-primary-care-swine---primary:
    run: influenza-infection-primary-care-swine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-involvement---primary/output
  influenza-infection-primary-care-illness---primary:
    run: influenza-infection-primary-care-illness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-swine---primary/output
  influenza-infection-primary-care-consultatn---primary:
    run: influenza-infection-primary-care-consultatn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-illness---primary/output
  influenza-infection-primary-care-avian---primary:
    run: influenza-infection-primary-care-avian---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-consultatn---primary/output
  influenza-infection-primary-care-myocarditis---primary:
    run: influenza-infection-primary-care-myocarditis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-avian---primary/output
  vpersonal-influenza-infection-primary-care---primary:
    run: vpersonal-influenza-infection-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-myocarditis---primary/output
  influenza-infection-primary-care-telephne---primary:
    run: influenza-infection-primary-care-telephne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: vpersonal-influenza-infection-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: influenza-infection-primary-care-telephne---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
