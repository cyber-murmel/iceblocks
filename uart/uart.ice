{
  "version": "1.2",
  "package": {
    "name": "UART",
    "version": "1.0",
    "description": "UART transceiver",
    "author": "marble",
    "image": ""
  },
  "design": {
    "board": "iCEBreaker",
    "graph": {
      "blocks": [
        {
          "id": "5d826bc8-ee5a-48df-b4ff-3d8457a83c92",
          "type": "basic.output",
          "data": {
            "name": "TX",
            "virtual": true
          },
          "position": {
            "x": 1064,
            "y": 328
          }
        },
        {
          "id": "8f0a1e1d-f914-470d-a8e1-9fcabfb6fc90",
          "type": "basic.output",
          "data": {
            "name": "Q",
            "range": "[8:0]",
            "size": 9,
            "virtual": true
          },
          "position": {
            "x": 1064,
            "y": 376
          }
        },
        {
          "id": "ce955144-f1c4-477f-8f58-f3f93a94602b",
          "type": "basic.output",
          "data": {
            "name": "IRQ",
            "virtual": true
          },
          "position": {
            "x": 1064,
            "y": 424
          }
        },
        {
          "id": "f1d139f6-26ac-4ca9-a1f2-ec6baa9047f1",
          "type": "basic.output",
          "data": {
            "name": "BSY",
            "virtual": true
          },
          "position": {
            "x": 1064,
            "y": 472
          }
        },
        {
          "id": "0774b54f-9ceb-4ffd-ac2b-6cb1873d61c6",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 512,
            "y": 488
          }
        },
        {
          "id": "0f4c6b39-07c1-4196-9ad8-3b9d2eae4f15",
          "type": "basic.input",
          "data": {
            "name": "RX",
            "clock": false,
            "virtual": true
          },
          "position": {
            "x": 512,
            "y": 536
          }
        },
        {
          "id": "20716cbf-5bce-4826-9f67-808faa78bc6a",
          "type": "basic.input",
          "data": {
            "name": "D",
            "range": "[8:0]",
            "clock": false,
            "size": 9,
            "virtual": true
          },
          "position": {
            "x": 512,
            "y": 584
          }
        },
        {
          "id": "b3d61268-b39a-40f7-8dae-36f24ce9485c",
          "type": "basic.input",
          "data": {
            "name": "TRIG",
            "clock": false,
            "virtual": true
          },
          "position": {
            "x": 512,
            "y": 632
          }
        },
        {
          "id": "d072af01-514b-4ada-bc49-725a699346b1",
          "type": "basic.constant",
          "data": {
            "name": "BAUD",
            "value": "2000000",
            "local": false
          },
          "position": {
            "x": 872,
            "y": 216
          }
        },
        {
          "id": "be8798c3-fe29-49bc-b0ea-24deb2db2777",
          "type": "basic.constant",
          "data": {
            "name": "N_BITS",
            "value": "8",
            "local": false
          },
          "position": {
            "x": 968,
            "y": 216
          }
        },
        {
          "id": "f9823643-b480-4922-815e-a6364895fd0d",
          "type": "6cd8e28ff64be2c7307557e35aca712850b08680",
          "position": {
            "x": 752,
            "y": 576
          },
          "size": {
            "width": 128,
            "height": 96
          }
        },
        {
          "id": "981e91c8-6e51-4f07-8e3b-819a0031c929",
          "type": "7c13a30bb9c93dd82392c1443891a305eed66de1",
          "position": {
            "x": 744,
            "y": 400
          },
          "size": {
            "width": 128,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "f9823643-b480-4922-815e-a6364895fd0d",
            "port": "38fb167f-9ad5-4a28-abdf-6a414b38a2c7"
          },
          "target": {
            "block": "f1d139f6-26ac-4ca9-a1f2-ec6baa9047f1",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "be8798c3-fe29-49bc-b0ea-24deb2db2777",
            "port": "constant-out"
          },
          "target": {
            "block": "f9823643-b480-4922-815e-a6364895fd0d",
            "port": "23973c75-6731-4ade-9018-2e0e7c0c4226"
          },
          "vertices": [
            {
              "x": 864,
              "y": 488
            }
          ]
        },
        {
          "source": {
            "block": "d072af01-514b-4ada-bc49-725a699346b1",
            "port": "constant-out"
          },
          "target": {
            "block": "981e91c8-6e51-4f07-8e3b-819a0031c929",
            "port": "b97eb13c-9063-42a5-b185-ec98071f4721"
          },
          "vertices": [
            {
              "x": 856,
              "y": 320
            }
          ]
        },
        {
          "source": {
            "block": "be8798c3-fe29-49bc-b0ea-24deb2db2777",
            "port": "constant-out"
          },
          "target": {
            "block": "981e91c8-6e51-4f07-8e3b-819a0031c929",
            "port": "86f8c3fa-fa24-4c57-b2d2-c0a0d6e1284c"
          }
        },
        {
          "source": {
            "block": "0f4c6b39-07c1-4196-9ad8-3b9d2eae4f15",
            "port": "out"
          },
          "target": {
            "block": "981e91c8-6e51-4f07-8e3b-819a0031c929",
            "port": "060c375d-352f-48d3-8676-5bfea613fd78"
          }
        },
        {
          "source": {
            "block": "d072af01-514b-4ada-bc49-725a699346b1",
            "port": "constant-out"
          },
          "target": {
            "block": "f9823643-b480-4922-815e-a6364895fd0d",
            "port": "4e9e8582-dfb2-4491-bc54-c628a2b320f9"
          },
          "vertices": [
            {
              "x": 816,
              "y": 472
            }
          ]
        },
        {
          "source": {
            "block": "981e91c8-6e51-4f07-8e3b-819a0031c929",
            "port": "a7282649-d085-40df-b48a-9a558274ba11"
          },
          "target": {
            "block": "ce955144-f1c4-477f-8f58-f3f93a94602b",
            "port": "in"
          },
          "vertices": [
            {
              "x": 1048,
              "y": 448
            }
          ]
        },
        {
          "source": {
            "block": "20716cbf-5bce-4826-9f67-808faa78bc6a",
            "port": "out"
          },
          "target": {
            "block": "f9823643-b480-4922-815e-a6364895fd0d",
            "port": "f84da023-ff91-49e7-842c-fce962b5cc5e"
          },
          "vertices": [
            {
              "x": 624,
              "y": 624
            }
          ],
          "size": 9
        },
        {
          "source": {
            "block": "981e91c8-6e51-4f07-8e3b-819a0031c929",
            "port": "febc2008-2c02-47a1-97cc-1f0b5ea11b16"
          },
          "target": {
            "block": "8f0a1e1d-f914-470d-a8e1-9fcabfb6fc90",
            "port": "in"
          },
          "vertices": [
            {
              "x": 1048,
              "y": 416
            }
          ],
          "size": 9
        },
        {
          "source": {
            "block": "f9823643-b480-4922-815e-a6364895fd0d",
            "port": "82564bc8-e685-4007-b6e8-c502fb1e75dd"
          },
          "target": {
            "block": "5d826bc8-ee5a-48df-b4ff-3d8457a83c92",
            "port": "in"
          },
          "vertices": [
            {
              "x": 1032,
              "y": 392
            }
          ]
        },
        {
          "source": {
            "block": "b3d61268-b39a-40f7-8dae-36f24ce9485c",
            "port": "out"
          },
          "target": {
            "block": "f9823643-b480-4922-815e-a6364895fd0d",
            "port": "1f24a70f-6731-46e0-8077-74dc4dd322b7"
          },
          "vertices": [
            {
              "x": 624,
              "y": 656
            }
          ]
        },
        {
          "source": {
            "block": "0774b54f-9ceb-4ffd-ac2b-6cb1873d61c6",
            "port": "out"
          },
          "target": {
            "block": "981e91c8-6e51-4f07-8e3b-819a0031c929",
            "port": "288c15e0-8eb3-4075-97b5-a1c8d4381d81"
          }
        },
        {
          "source": {
            "block": "0774b54f-9ceb-4ffd-ac2b-6cb1873d61c6",
            "port": "out"
          },
          "target": {
            "block": "f9823643-b480-4922-815e-a6364895fd0d",
            "port": "4b124a1b-499f-47d6-a037-58861624e7a5"
          },
          "vertices": [
            {
              "x": 712,
              "y": 552
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "6cd8e28ff64be2c7307557e35aca712850b08680": {
      "package": {
        "name": "UART TX",
        "version": "1.0",
        "description": "UART Transmitter",
        "author": "marble",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4b124a1b-499f-47d6-a037-58861624e7a5",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 768,
                "y": 512
              }
            },
            {
              "id": "38fb167f-9ad5-4a28-abdf-6a414b38a2c7",
              "type": "basic.output",
              "data": {
                "name": "BSY"
              },
              "position": {
                "x": 1760,
                "y": 560
              }
            },
            {
              "id": "f84da023-ff91-49e7-842c-fce962b5cc5e",
              "type": "basic.input",
              "data": {
                "name": "D",
                "range": "[8:0]",
                "clock": false,
                "size": 9
              },
              "position": {
                "x": 768,
                "y": 704
              }
            },
            {
              "id": "82564bc8-e685-4007-b6e8-c502fb1e75dd",
              "type": "basic.output",
              "data": {
                "name": "TX"
              },
              "position": {
                "x": 1760,
                "y": 848
              }
            },
            {
              "id": "1f24a70f-6731-46e0-8077-74dc4dd322b7",
              "type": "basic.input",
              "data": {
                "name": "TRIG",
                "clock": false
              },
              "position": {
                "x": 768,
                "y": 896
              }
            },
            {
              "id": "4e9e8582-dfb2-4491-bc54-c628a2b320f9",
              "type": "basic.constant",
              "data": {
                "name": "BAUD",
                "value": "2000000",
                "local": false
              },
              "position": {
                "x": 976,
                "y": 320
              }
            },
            {
              "id": "23973c75-6731-4ade-9018-2e0e7c0c4226",
              "type": "basic.constant",
              "data": {
                "name": "N_BITS",
                "value": "8",
                "local": false
              },
              "position": {
                "x": 1128,
                "y": 320
              }
            },
            {
              "id": "f9aa6791-f080-4aa7-9857-0012c6f834e6",
              "type": "basic.constant",
              "data": {
                "name": "PARITY",
                "value": "\"N\"",
                "local": false
              },
              "position": {
                "x": 1288,
                "y": 320
              }
            },
            {
              "id": "d0180893-770b-4f53-a5e4-ead29768a6fa",
              "type": "basic.constant",
              "data": {
                "name": "N_STOP",
                "value": "1",
                "local": false
              },
              "position": {
                "x": 1440,
                "y": 320
              }
            },
            {
              "id": "2c87eaa4-f4ce-446b-9b32-6a602b33ab4a",
              "type": "basic.constant",
              "data": {
                "name": "F_CLK",
                "value": "12000000",
                "local": true
              },
              "position": {
                "x": 1592,
                "y": 320
              }
            },
            {
              "id": "93ca839a-bc5e-4c35-b092-5abdd935ef4b",
              "type": "basic.code",
              "data": {
                "code": "/* Normally you would use enums here, but\n * for some reasons I can't use enums.\n */\n\nparameter\n  IDLE      = 1'b0,\n  TRANSMIT  = 1'b1;\n  \nparameter TICKS_PER_BIT = $rtoi(F_CLK/BAUD);\n\nreg [($bits(TICKS_PER_BIT)-1):0] timer;\ninitial timer = TICKS_PER_BIT;\n\nreg [1:0] state;\ninitial state = IDLE;\n\nreg busy, tx;\ninitial busy = 0;\ninitial tx = 1;\n\nreg [(N_BITS-1+2):0] buffer;\nreg [($bits(N_BITS))-1:0] bit_idx;\ninitial bit_idx = 0;\n\nalways @(posedge CLK) begin\n  case (state)\n    IDLE: begin\n      if (1 == TRIG) begin\n        busy <= 1;                      // tell the world we are busy\n        buffer <= {1'b1, DATA[(N_BITS-1):0], 1'b0};   // add start and stop bit\n        bit_idx <= 0;                   // reset bit index\n        timer <= TICKS_PER_BIT;         // reset timer\n        state <= TRANSMIT;              // change state to start bit\n      end\n    end\n    TRANSMIT: begin\n      if ((N_BITS+2) == bit_idx) begin\n        timer <= TICKS_PER_BIT;         // reset timer\n        state <= IDLE;                  // change state\n        busy <= 0;\n        /* perform entry transition of stop bit */\n      end else if (1 == timer) begin\n        timer <= TICKS_PER_BIT;\n        tx <= buffer[bit_idx];\n        bit_idx <= bit_idx + 1;\n      end else begin\n        timer <= timer-1;\n      end\n    end\n  endcase\nend\n\nassign BSY = busy;\nassign TX = tx;",
                "params": [
                  {
                    "name": "BAUD"
                  },
                  {
                    "name": "N_BITS"
                  },
                  {
                    "name": "PARITY"
                  },
                  {
                    "name": "STOP"
                  },
                  {
                    "name": "F_CLK"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "CLK"
                    },
                    {
                      "name": "DATA",
                      "range": "[8:0]",
                      "size": 9
                    },
                    {
                      "name": "TRIG"
                    }
                  ],
                  "out": [
                    {
                      "name": "BSY"
                    },
                    {
                      "name": "TX"
                    }
                  ]
                }
              },
              "position": {
                "x": 944,
                "y": 448
              },
              "size": {
                "width": 776,
                "height": 576
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "4e9e8582-dfb2-4491-bc54-c628a2b320f9",
                "port": "constant-out"
              },
              "target": {
                "block": "93ca839a-bc5e-4c35-b092-5abdd935ef4b",
                "port": "BAUD"
              }
            },
            {
              "source": {
                "block": "2c87eaa4-f4ce-446b-9b32-6a602b33ab4a",
                "port": "constant-out"
              },
              "target": {
                "block": "93ca839a-bc5e-4c35-b092-5abdd935ef4b",
                "port": "F_CLK"
              }
            },
            {
              "source": {
                "block": "93ca839a-bc5e-4c35-b092-5abdd935ef4b",
                "port": "TX"
              },
              "target": {
                "block": "82564bc8-e685-4007-b6e8-c502fb1e75dd",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4b124a1b-499f-47d6-a037-58861624e7a5",
                "port": "out"
              },
              "target": {
                "block": "93ca839a-bc5e-4c35-b092-5abdd935ef4b",
                "port": "CLK"
              }
            },
            {
              "source": {
                "block": "23973c75-6731-4ade-9018-2e0e7c0c4226",
                "port": "constant-out"
              },
              "target": {
                "block": "93ca839a-bc5e-4c35-b092-5abdd935ef4b",
                "port": "N_BITS"
              }
            },
            {
              "source": {
                "block": "f9aa6791-f080-4aa7-9857-0012c6f834e6",
                "port": "constant-out"
              },
              "target": {
                "block": "93ca839a-bc5e-4c35-b092-5abdd935ef4b",
                "port": "PARITY"
              }
            },
            {
              "source": {
                "block": "d0180893-770b-4f53-a5e4-ead29768a6fa",
                "port": "constant-out"
              },
              "target": {
                "block": "93ca839a-bc5e-4c35-b092-5abdd935ef4b",
                "port": "STOP"
              }
            },
            {
              "source": {
                "block": "93ca839a-bc5e-4c35-b092-5abdd935ef4b",
                "port": "BSY"
              },
              "target": {
                "block": "38fb167f-9ad5-4a28-abdf-6a414b38a2c7",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "f84da023-ff91-49e7-842c-fce962b5cc5e",
                "port": "out"
              },
              "target": {
                "block": "93ca839a-bc5e-4c35-b092-5abdd935ef4b",
                "port": "DATA"
              },
              "size": 9
            },
            {
              "source": {
                "block": "1f24a70f-6731-46e0-8077-74dc4dd322b7",
                "port": "out"
              },
              "target": {
                "block": "93ca839a-bc5e-4c35-b092-5abdd935ef4b",
                "port": "TRIG"
              }
            }
          ]
        }
      }
    },
    "7c13a30bb9c93dd82392c1443891a305eed66de1": {
      "package": {
        "name": "UART RX",
        "version": "1.0",
        "description": "UART Receiver",
        "author": "marble",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "febc2008-2c02-47a1-97cc-1f0b5ea11b16",
              "type": "basic.output",
              "data": {
                "name": "Q",
                "range": "[8:0]",
                "size": 9
              },
              "position": {
                "x": 1464,
                "y": 368
              }
            },
            {
              "id": "288c15e0-8eb3-4075-97b5-a1c8d4381d81",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 464,
                "y": 368
              }
            },
            {
              "id": "a7282649-d085-40df-b48a-9a558274ba11",
              "type": "basic.output",
              "data": {
                "name": "IRQ"
              },
              "position": {
                "x": 1464,
                "y": 656
              }
            },
            {
              "id": "060c375d-352f-48d3-8676-5bfea613fd78",
              "type": "basic.input",
              "data": {
                "name": "RX",
                "clock": false
              },
              "position": {
                "x": 464,
                "y": 656
              }
            },
            {
              "id": "b97eb13c-9063-42a5-b185-ec98071f4721",
              "type": "basic.constant",
              "data": {
                "name": "BAUD",
                "value": "9600",
                "local": false
              },
              "position": {
                "x": 648,
                "y": 128
              }
            },
            {
              "id": "86f8c3fa-fa24-4c57-b2d2-c0a0d6e1284c",
              "type": "basic.constant",
              "data": {
                "name": "N_BITS",
                "value": "8",
                "local": false
              },
              "position": {
                "x": 800,
                "y": 128
              }
            },
            {
              "id": "808bd86f-9f1d-4841-831b-9ba296c760c2",
              "type": "basic.constant",
              "data": {
                "name": "PARITY",
                "value": "\"N\"",
                "local": false
              },
              "position": {
                "x": 960,
                "y": 128
              }
            },
            {
              "id": "5d4c6b67-65d6-4941-9261-5214553d74b5",
              "type": "basic.constant",
              "data": {
                "name": "N_STOP",
                "value": "1",
                "local": false
              },
              "position": {
                "x": 1112,
                "y": 128
              }
            },
            {
              "id": "6d861491-4b00-437a-ad31-73a0d25b2263",
              "type": "basic.constant",
              "data": {
                "name": "F_CLK",
                "value": "12000000",
                "local": true
              },
              "position": {
                "x": 1264,
                "y": 128
              }
            },
            {
              "id": "19ff476b-1964-4469-8bf6-6a660046850e",
              "type": "basic.code",
              "data": {
                "code": "/* Normally you would use enums here, but\n * for some reasons I can't use enums.\n */\n\nparameter TICKS_PER_BIT = $rtoi(F_CLK/BAUD);\n\nparameter\n  IDLE      = 1'b0,\n  RECEIVE   = 1'b1;\n\nreg [($bits(TICKS_PER_BIT)-1):0] timer;\ninitial timer = TICKS_PER_BIT;\n\nreg [1:0] state;\ninitial state = IDLE;\n\nreg irq, rx;\ninitial irq = 0;\ninitial rx = 1;\n\nreg [(N_BITS-1)+2:0] buffer, data;\nreg [($bits(N_BITS))-1:0] bit_idx;\ninitial bit_idx = 0;\n\nalways @(posedge CLK)\n  rx <= RX;\n\nalways @(posedge CLK) begin\n  case (state)\n    IDLE: begin\n      if (0 == rx) begin                // start condition\n        buffer <= 0;                    // reset input buffer\n        bit_idx <= 0;                   // reset bit index\n        timer <= TICKS_PER_BIT>>1;       // sample in the middle of the signal\n        state <= RECEIVE;               // change state to start bit\n      end\n      irq <= 0;\n    end\n    RECEIVE: begin\n      if ((N_BITS+2) == bit_idx) begin\n        timer <= TICKS_PER_BIT;         // reset timer\n        state <= IDLE;                  // change state\n        if ((0 == buffer[0]) & (1 == buffer[N_BITS+1])) begin\n          irq <= 1;\n          data <= buffer[N_BITS:1];\n        end\n      end else if (1 == timer) begin\n        buffer[bit_idx] <= rx;\n        timer <= TICKS_PER_BIT;\n        bit_idx <= bit_idx + 1;\n      end else begin\n        timer <= timer-1;\n      end\n    end\n  endcase\nend\n\nassign IRQ = irq;\nassign DATA = data;",
                "params": [
                  {
                    "name": "BAUD"
                  },
                  {
                    "name": "N_BITS"
                  },
                  {
                    "name": "PARITY"
                  },
                  {
                    "name": "STOP"
                  },
                  {
                    "name": "F_CLK"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "CLK"
                    },
                    {
                      "name": "RX"
                    }
                  ],
                  "out": [
                    {
                      "name": "DATA",
                      "range": "[8:0]",
                      "size": 9
                    },
                    {
                      "name": "IRQ"
                    }
                  ]
                }
              },
              "position": {
                "x": 616,
                "y": 256
              },
              "size": {
                "width": 776,
                "height": 576
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b97eb13c-9063-42a5-b185-ec98071f4721",
                "port": "constant-out"
              },
              "target": {
                "block": "19ff476b-1964-4469-8bf6-6a660046850e",
                "port": "BAUD"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "6d861491-4b00-437a-ad31-73a0d25b2263",
                "port": "constant-out"
              },
              "target": {
                "block": "19ff476b-1964-4469-8bf6-6a660046850e",
                "port": "F_CLK"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "288c15e0-8eb3-4075-97b5-a1c8d4381d81",
                "port": "out"
              },
              "target": {
                "block": "19ff476b-1964-4469-8bf6-6a660046850e",
                "port": "CLK"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "86f8c3fa-fa24-4c57-b2d2-c0a0d6e1284c",
                "port": "constant-out"
              },
              "target": {
                "block": "19ff476b-1964-4469-8bf6-6a660046850e",
                "port": "N_BITS"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "808bd86f-9f1d-4841-831b-9ba296c760c2",
                "port": "constant-out"
              },
              "target": {
                "block": "19ff476b-1964-4469-8bf6-6a660046850e",
                "port": "PARITY"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "5d4c6b67-65d6-4941-9261-5214553d74b5",
                "port": "constant-out"
              },
              "target": {
                "block": "19ff476b-1964-4469-8bf6-6a660046850e",
                "port": "STOP"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "19ff476b-1964-4469-8bf6-6a660046850e",
                "port": "DATA"
              },
              "target": {
                "block": "febc2008-2c02-47a1-97cc-1f0b5ea11b16",
                "port": "in"
              },
              "size": 9
            },
            {
              "source": {
                "block": "19ff476b-1964-4469-8bf6-6a660046850e",
                "port": "IRQ"
              },
              "target": {
                "block": "a7282649-d085-40df-b48a-9a558274ba11",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "060c375d-352f-48d3-8676-5bfea613fd78",
                "port": "out"
              },
              "target": {
                "block": "19ff476b-1964-4469-8bf6-6a660046850e",
                "port": "RX"
              }
            }
          ]
        }
      }
    }
  }
}