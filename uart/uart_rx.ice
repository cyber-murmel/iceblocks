{
  "version": "1.2",
  "package": {
    "name": "UART RX",
    "version": "1.0",
    "description": "UART Receiver",
    "author": "marble",
    "image": ""
  },
  "design": {
    "board": "iCEBreaker",
    "graph": {
      "blocks": [
        {
          "id": "febc2008-2c02-47a1-97cc-1f0b5ea11b16",
          "type": "basic.output",
          "data": {
            "name": "Q",
            "range": "[8:0]",
            "size": 9,
            "virtual": true
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
            "clock": true,
            "virtual": true
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
            "name": "IRQ",
            "virtual": true
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
            "clock": false,
            "virtual": true
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
  },
  "dependencies": {}
}