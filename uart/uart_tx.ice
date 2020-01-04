{
  "version": "1.2",
  "package": {
    "name": "UART TX",
    "version": "1.0",
    "description": "UART Transmitter",
    "author": "marble",
    "image": ""
  },
  "design": {
    "board": "iCEBreaker",
    "graph": {
      "blocks": [
        {
          "id": "4b124a1b-499f-47d6-a037-58861624e7a5",
          "type": "basic.input",
          "data": {
            "name": "",
            "clock": true,
            "virtual": true
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
            "name": "BSY",
            "virtual": true
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
            "size": 9,
            "virtual": true
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
            "name": "TX",
            "virtual": true
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
            "clock": false,
            "virtual": true
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
  },
  "dependencies": {}
}