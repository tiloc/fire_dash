class SDCDemoInstrument {
  // ignore: unnecessary_raw_strings
  static const sdcDemoInstrument = r'''
    {
        "resourceType": "Questionnaire",
        "id": "sdc-demo",
        "url": "http://build.fhir.org/ig/HL7/sdc/examples.html",
        "title": "SDC Demo Survey",
        "status": "draft",
        "subjectType": [
            "Patient"
        ],
        "date": "2021-03-14",
        "publisher": "HL7 International - FHIR Infrastructure Work Group",
        "item": [
            {
                "extension": [
                    {
                        "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/questionnaire-display-category",
                                    "code": "security",
                                    "display": "Security"
                                }
                            ],
                            "text": "The text provides guidance on how the information will be handled from a security perspective."
                        }
                    }
                ],
                "linkId": "1.0-security",
                "text": "ALL QUESTIONS CONTAINED IN THIS QUESTIONNAIRE ARE OPTIONAL AND WILL BE KEPT STRICTLY CONFIDENTIAL.",
                "type": "display"
            },
            {
                "linkId": "123523-renderstyle",
                "type": "string",
                "text": "Enter your First Name",
                "_text": {
                    "extension": [
                        {
                            "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                            "valueString": "color:green;"
                        }
                    ]
                }
            },
            {
                "extension": [
                    {
                        "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
                        "valueBoolean": true
                    }
                ],
                "linkId": "1.0-hidden",
                "text": "Form ID",
                "type": "string"
            },
            {
                "linkId": "1.1-hidden",
                "text": "Event ID",
                "type": "string"
            },
            {
                "linkId": "1",
                "text": "Please answer Yes or No to each of the following questions:",
                "_text": {
                    "extension": [
                        {
                            "url": "http://hl7.org/fhir/StructureDefinition/rendering-xhtml",
                            "valueString": "<i>Please</i> answer <b><u>Yes</u></b> or <b><u>No</u></b> to each of the following questions:"
                        }
                    ]
                },
                "type": "display"
            },
            {
                "extension": [
                    {
                        "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/questionnaire-item-control",
                                    "code": "radio-button",
                                    "display": "Radio Button"
                                }
                            ],
                            "text": "A control where choices are listed with a button beside them. The button can be toggled to select or de-select a given choice. Selecting one item deselects all others."
                        }
                    }
                ],
                "linkId": "1.0",
                "text": "Gender:",
                "type": "choice",
                "answerOption": [
                    {
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
                                "valueString": "(a)"
                            }
                        ],
                        "valueCoding": {
                            "code": "F",
                            "display": "Female"
                        },
                        "initialSelected": true
                    },
                    {
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
                                "valueString": "(b)"
                            }
                        ],
                        "valueCoding": {
                            "code": "M",
                            "display": "Male"
                        }
                    },
                    {
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
                                "valueString": "(c)"
                            }
                        ],
                        "valueCoding": {
                            "code": "O",
                            "display": "Other"
                        }
                    },
                    {
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix",
                                "valueString": "(d)"
                            }
                        ],
                        "valueCoding": {
                            "code": "U",
                            "display": "Unknown"
                        }
                    }
                ]
            },
            {
                "linkId": "2.3.b",
                "text": "Email*",
                "type": "string",
                "required": true
            },
            {
                "extension": [
                    {
                        "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression",
                        "valueExpression": {
                            "description": "current date",
                            "language": "text/fhirpath",
                            "expression": "today()"
                        }
                    }
                ],
                "linkId": "2.4.b",
                "text": "Current Date:",
                "type": "date",
                "readOnly": true
            },
            {
                "extension": [
                    {
                        "url": "http://hl7.org/fhir/StructureDefinition/minValue",
                        "valueDecimal": 1
                    },
                    {
                        "url": "http://hl7.org/fhir/StructureDefinition/maxValue",
                        "valueDecimal": 100
                    },
                    {
                        "url": "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces",
                        "valueInteger": 2
                    }
                ],
                "linkId": "100000",
                "type": "decimal",
                "text": "Enter your weight in kg"
            },
            {
                "linkId": "123523.35235",
                "type": "string",
                "text": "Enter your First Name",
                "maxLength": 50
            },
            {
                "linkId": "2.5.b-repeats",
                "text": "Heart History (check all that applies)",
                "type": "open-choice",
                "repeats": true,
                "answerOption": [
                    {
                        "valueCoding": {
                            "code": "U1",
                            "display": "Heart attack"
                        }
                    },
                    {
                        "valueCoding": {
                            "code": "U2",
                            "display": "Heart surgery"
                        }
                    },
                    {
                        "valueCoding": {
                            "code": "U3",
                            "display": "Cardiac catheterization"
                        }
                    },
                    {
                        "valueCoding": {
                            "code": "U4",
                            "display": "Coronary angioplasty (PTCA)"
                        }
                    },
                    {
                        "valueCoding": {
                            "code": "U5",
                            "display": "Cardiac pacemaker"
                        }
                    }
                ]
            },
            {
                "type": "choice",
                "extension": [
                    {
                        "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation",
                        "valueCode": "horizontal"
                    }
                ],
                "linkId": "1.0-imagerendering",
                "text": "How are you feeling today?",
                "answerOption": [
                    {
                        "valueString": "Sad",
                        "_valueString": {
                            "extension": [
                                {
                                    "url": "http://hl7.org/fhir/StructureDefinition/rendering-xhtml",
                                    "valueString": "<img src='data:image/png;base64,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IC7g9st3TX8+58FVAgYmSkG//e1vmy984QvN//zP/zTf/e53G9bNgViCsgYFgjagqskSt5ql9lk4ENRRwKxw59Fh8pGufOTtOfA5tt566+YRj3hE87d/+7fNgQce6PUMZ7XEHzr0KZIp/nQHQm7vNmdrtx1jzVDXqlTqy0Mh7TjLbl3SzNejirjf/ta3mne+851ppVgkyimlUhaAacY408JvvPHGZoO7bZLWBABQWQ33jrqXVoGmrJOzoYSK631xHAVScQCqeNH8eiZd4SuWLU/Lhr+73/3uzd/93d81Rx99dLNVgG4linTSSsc7aEWXt2Ur7uBbePGinG0f07PVTbNuuW656eZm/eo5hQATTHGmBIKiqPWitwV8wjYMxxktCaBQ2IIF6zQffO97m3//939vfve736X/4zkFliKlQdDiIwp3zypcce3VzYYbbthsueWWzTbbbJP+0U477dQ4OOQsCyAUyOr9Ao/eJJD++c9/ziYXD9UxuO666zLtUrh38SAtPEjjphtuzDAgbTfTRx55ZPPMZz6z2WPPPb3Wo5ujad0g+EUJsPkjZepF6F5IXzOsozFbNOvguvH6G5qNNt44y39bWJt1ww9qEwFSzoLueE/FuS56cpzy//eiFzW///3vs1ZvuummCa7rr78+wcPXoTAgK0A5A9Nee+3V7Lvvvs3hj35Us8UWWySwxEesiHhAAAzAORaJU89cO/DKT7v55pvTUn7uc5/LjsP3vve9BJ20gVrawNWsGLFsrJL38evsXt4Pe9jDmic/+cnNfe5zn2ZeVY54jxVWKW+7faQDI1/llHYNzKali0o0WzTr4CJc1gqICL7AtSyu53ebAMJhqVgw9IH3v7954xvfmJZqgwgrBVePTXPjoCRKoCSWiPN82GGHNfe4xz2azQJQ8qWcUkYmfid/5IGKh3q9AIKPop/97GfNhRdemMePfvSj5pprrmm22GzzRi8WGFlTvAAd8AGaimCohCU7/fTTm92iM1C0NMC0YN07BlkrT7zMdpOIxzUGXIGEVDamNIGaGiad0AlcLf36xRc3L3vZy7LXx8oA463x/G53u1vG0e1XewnWc+/9wz/8Q3O/+92vOejggyWdvtmSiOfZWmp11yip+WlJIkobKHVd50wjkxkBFeB6z/vjKdWzaiLli1jbyy+/vDnnFa9MkClvpaMMDuVTYRbF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'/>"
                                }
                            ]
                        }
                    },
                    {
                        "valueString": "OK",
                        "_valueString": {
                            "extension": [
                                {
                                    "url": "http://hl7.org/fhir/StructureDefinition/rendering-xhtml",
                                    "valueString": "<img src='#okImage'>"
                                }
                            ]
                        }
                    },
                    {
                        "valueString": "Happy",
                        "_valueString": {
                            "extension": [
                                {
                                    "url": "http://hl7.org/fhir/StructureDefinition/rendering-xhtml",
                                    "valueString": "<img src='#happyImage'>"
                                }
                            ]
                        }
                    }
                ]
            },
            {
                "linkId": "4.2.b",
                "type": "group",
                "item": [
                    {
                        "linkId": "4.2.b.1",
                        "text": "Choose Gender",
                        "type": "choice",
                        "answerValueSet": "http://hl7.org/fhir/ValueSet/administrative-gender",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation",
                                "valueCode": "horizontal"
                            }
                        ]
                    },
                    {
                        "linkId": "4.2.b.2",
                        "text": "Are you pregnant? (enableWhen = gender is Female)",
                        "type": "choice",
                        "enableWhen": [
                            {
                                "question": "4.2.b.1",
                                "operator": "=",
                                "answerCoding": {
                                    "system": "http://hl7.org/fhir/administrative-gender",
                                    "code": "female"
                                }
                            }
                        ],
                        "answerValueSet": "http://hl7.org/fhir/ValueSet/yesnodontknow"
                    },
                    {
                        "linkId": "4.2.b.3",
                        "text": "Are you diabetic? (enableWhen = gender is Female)",
                        "type": "choice",
                        "enableWhen": [
                            {
                                "question": "4.2.b.1",
                                "operator": "=",
                                "answerCoding": {
                                    "system": "http://hl7.org/fhir/administrative-gender",
                                    "code": "female"
                                }
                            }
                        ],
                        "answerValueSet": "http://hl7.org/fhir/ValueSet/yesnodontknow"
                    },
                    {
                        "linkId": "4.2.b.4",
                        "text": "Have you been diagnosed with Gestational Diabetes? (enableBehavior = only when pregnant and diabetic)",
                        "type": "choice",
                        "enableWhen": [
                            {
                                "question": "4.2.b.2",
                                "operator": "=",
                                "answerCoding": {
                                    "system": "http://terminology.hl7.org/CodeSystem/v2-0136",
                                    "code": "Y"
                                }
                            },
                            {
                                "question": "4.2.b.3",
                                "operator": "=",
                                "answerCoding": {
                                    "system": "http://terminology.hl7.org/CodeSystem/v2-0136",
                                    "code": "Y"
                                }
                            }
                        ],
                        "enableBehavior": "all",
                        "answerValueSet": "http://hl7.org/fhir/ValueSet/yesnodontknow"
                    },
                    {
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/entryFormat",
                                "valueString": "MM/DD/YYYY"
                            }
                        ],
                        "linkId": "4.2.b.5",
                        "text": "Enter your birthdate (MM/DD/YYYY)",
                        "type": "date",
                        "answerValueSet": "http://hl7.org/fhir/ValueSet/administrative-gender"
                    },
                    {
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression",
                                "valueExpression": {
                                    "description": "if last 2 questions were answered",
                                    "language": "text/fhirpath",
                                    "expression": "%resource.repeats(item).where(linkId='4.2.b.1').answer.valueCoding.code ='female' and today().toString().substring(0, 4).toInteger() - %resource.repeats(item).where(linkId='4.2.b.5').answer.toString().substring(0, 4).toInteger() >= 40"
                                }
                            }
                        ],
                        "linkId": "4.2.b.6",
                        "text": "Have you had mammogram before?(enableWhenExpression = only when gender is female and age > 40)",
                        "type": "choice",
                        "answerValueSet": "http://hl7.org/fhir/ValueSet/yesnodontknow"
                    }
                ]
            },
            {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                "valueCodeableConcept": {
                  "coding": [
                    {
                      "system": "http://hl7.org/fhir/questionnaire-item-control",
                      "code": "slider",
                      "display": "Slider"
                    }
                  ],
                  "text": "A control where an axis is displayed between the high and low values and the control can be visually manipulated to select a value anywhere on the axis."
                }
              },
              {
                "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
                "valueInteger": 10
              },
              {
                "url": "http://hl7.org/fhir/StructureDefinition/minValue",
                "valueInteger": 0
              },
              {
                "url": "http://hl7.org/fhir/StructureDefinition/maxValue",
                "valueInteger": 100
              }
            ],
            "linkId": "3.1",
            "text": "Rate your doctor:",
            "type": "integer",
            "initial": [
              {
                "valueInteger": 50
              }
            ]
          }
        ]
    }
''';
}
