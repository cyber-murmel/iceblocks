{
  "version": "1.2",
  "package": {
    "name": "UART test",
    "version": "1.0",
    "description": "UART echo",
    "author": "marble",
    "image": ""
  },
  "design": {
    "board": "iCEBreaker",
    "graph": {
      "blocks": [
        {
          "id": "c0cb91a2-9a35-4af3-9d9a-163b09e7e5a4",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED4",
                "value": "23"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1080,
            "y": 184
          }
        },
        {
          "id": "1ec49d70-9968-4a20-9b85-68060629c672",
          "type": "basic.output",
          "data": {
            "name": "BSY",
            "pins": [
              {
                "index": "0",
                "name": "LED2",
                "value": "27"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 952,
            "y": 256
          }
        },
        {
          "id": "d24a97f3-1344-48dc-bf91-97a58f2034e6",
          "type": "basic.input",
          "data": {
            "name": "CLK",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "35"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": 616,
            "y": 280
          }
        },
        {
          "id": "94b0c959-f0ee-49e4-bbf8-d4ea162ce957",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED1",
                "value": "26"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 952,
            "y": 328
          }
        },
        {
          "id": "165d0a61-bf33-47b5-842d-0772f91a6dce",
          "type": "basic.input",
          "data": {
            "name": "RX",
            "pins": [
              {
                "index": "0",
                "name": "RX",
                "value": "6"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 616,
            "y": 352
          }
        },
        {
          "id": "53853fca-9496-47c2-b4fe-3d6f2ca7b733",
          "type": "basic.output",
          "data": {
            "name": "TX",
            "pins": [
              {
                "index": "0",
                "name": "TX",
                "value": "9"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 952,
            "y": 400
          }
        },
        {
          "id": "df7d5067-6612-4424-b473-95f7e56ce9cb",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED3",
                "value": "25"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 952,
            "y": 472
          }
        },
        {
          "id": "f8e33df5-109c-4373-8fa6-5ad5871e1fee",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED5",
                "value": "21"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1080,
            "y": 544
          }
        },
        {
          "id": "dfe96661-01a0-4923-a640-7af735258e84",
          "type": "basic.constant",
          "data": {
            "name": "BAUD",
            "value": "2000000",
            "local": false
          },
          "position": {
            "x": 720,
            "y": 184
          }
        },
        {
          "id": "dc92c3b3-506c-45e0-85b5-3adb01e996fb",
          "type": "basic.constant",
          "data": {
            "name": "N_BITS",
            "value": "8",
            "local": false
          },
          "position": {
            "x": 816,
            "y": 184
          }
        },
        {
          "id": "e73ee17b-60c8-4e84-bd37-91ea7578f34c",
          "type": "82041acc0f349dd5f038765c7d783bbe4b20dc00",
          "position": {
            "x": 952,
            "y": 544
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "ed5a082c-c430-4abd-ae79-69c502080049",
          "type": "82041acc0f349dd5f038765c7d783bbe4b20dc00",
          "position": {
            "x": 952,
            "y": 184
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "50411975-e450-4e8c-bbbd-2b4437a54216",
          "type": "ac25f3dc1b846b76fe6fcd9f06ccc8c350ba8be9",
          "position": {
            "x": 768,
            "y": 336
          },
          "size": {
            "width": 96,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "e73ee17b-60c8-4e84-bd37-91ea7578f34c",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "f8e33df5-109c-4373-8fa6-5ad5871e1fee",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "ed5a082c-c430-4abd-ae79-69c502080049",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "c0cb91a2-9a35-4af3-9d9a-163b09e7e5a4",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "ce955144-f1c4-477f-8f58-f3f93a94602b"
          },
          "target": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "b3d61268-b39a-40f7-8dae-36f24ce9485c"
          }
        },
        {
          "source": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "8f0a1e1d-f914-470d-a8e1-9fcabfb6fc90"
          },
          "target": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "20716cbf-5bce-4826-9f67-808faa78bc6a"
          },
          "vertices": [
            {
              "x": 904,
              "y": 488
            },
            {
              "x": 728,
              "y": 456
            }
          ],
          "size": 9
        },
        {
          "source": {
            "block": "165d0a61-bf33-47b5-842d-0772f91a6dce",
            "port": "out"
          },
          "target": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "0f4c6b39-07c1-4196-9ad8-3b9d2eae4f15"
          }
        },
        {
          "source": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "5d826bc8-ee5a-48df-b4ff-3d8457a83c92"
          },
          "target": {
            "block": "94b0c959-f0ee-49e4-bbf8-d4ea162ce957",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "5d826bc8-ee5a-48df-b4ff-3d8457a83c92"
          },
          "target": {
            "block": "53853fca-9496-47c2-b4fe-3d6f2ca7b733",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "ce955144-f1c4-477f-8f58-f3f93a94602b"
          },
          "target": {
            "block": "e73ee17b-60c8-4e84-bd37-91ea7578f34c",
            "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
          }
        },
        {
          "source": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "ce955144-f1c4-477f-8f58-f3f93a94602b"
          },
          "target": {
            "block": "df7d5067-6612-4424-b473-95f7e56ce9cb",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "f1d139f6-26ac-4ca9-a1f2-ec6baa9047f1"
          },
          "target": {
            "block": "1ec49d70-9968-4a20-9b85-68060629c672",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "f1d139f6-26ac-4ca9-a1f2-ec6baa9047f1"
          },
          "target": {
            "block": "ed5a082c-c430-4abd-ae79-69c502080049",
            "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
          }
        },
        {
          "source": {
            "block": "dfe96661-01a0-4923-a640-7af735258e84",
            "port": "constant-out"
          },
          "target": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "d072af01-514b-4ada-bc49-725a699346b1"
          },
          "vertices": [
            {
              "x": 784,
              "y": 280
            }
          ]
        },
        {
          "source": {
            "block": "dc92c3b3-506c-45e0-85b5-3adb01e996fb",
            "port": "constant-out"
          },
          "target": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "be8798c3-fe29-49bc-b0ea-24deb2db2777"
          },
          "vertices": [
            {
              "x": 848,
              "y": 280
            }
          ]
        },
        {
          "source": {
            "block": "d24a97f3-1344-48dc-bf91-97a58f2034e6",
            "port": "out"
          },
          "target": {
            "block": "50411975-e450-4e8c-bbbd-2b4437a54216",
            "port": "c90820fb-6047-46d8-a6c9-48e4ce4723ed"
          }
        }
      ]
    }
  },
  "dependencies": {
    "82041acc0f349dd5f038765c7d783bbe4b20dc00": {
      "package": {
        "name": "Flip-flop T",
        "version": "1.0.0",
        "description": "Toggle flip-flop",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-227.932%22%20y=%22429.867%22%20font-weight=%22400%22%20font-size=%2224.601%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-227.932%22%20y=%22429.867%22%3ETFF%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false,
                "virtual": false
              },
              "position": {
                "x": 160,
                "y": -80
              }
            },
            {
              "id": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 672,
                "y": -64
              }
            },
            {
              "id": "f8a48554-c608-4f6a-ad56-04c70e5baef3",
              "type": "70ff7f2a2f0ede80fc37c66a997650a1d0d0102b",
              "position": {
                "x": 352,
                "y": -64
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6d1059f6-855e-429e-8cf2-848f56d2c993",
              "type": "32200dc0915d45d6ec035bcec61c8472f0cc7b88",
              "position": {
                "x": 496,
                "y": -16
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "f8a48554-c608-4f6a-ad56-04c70e5baef3",
                "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
              },
              "target": {
                "block": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "f8a48554-c608-4f6a-ad56-04c70e5baef3",
                "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
              },
              "target": {
                "block": "6d1059f6-855e-429e-8cf2-848f56d2c993",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
                "port": "out"
              },
              "target": {
                "block": "f8a48554-c608-4f6a-ad56-04c70e5baef3",
                "port": "6855f64f-fa1c-4371-b2e1-a98970674a96"
              }
            },
            {
              "source": {
                "block": "6d1059f6-855e-429e-8cf2-848f56d2c993",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "f8a48554-c608-4f6a-ad56-04c70e5baef3",
                "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
              },
              "vertices": [
                {
                  "x": 408,
                  "y": 64
                }
              ]
            }
          ]
        }
      }
    },
    "70ff7f2a2f0ede80fc37c66a997650a1d0d0102b": {
      "package": {
        "name": "Flip-flop D",
        "version": "1.0.0",
        "description": "Delay flip-flop",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-231.121%22%20y=%22429.867%22%20font-weight=%22400%22%20font-size=%2224.601%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-231.121%22%20y=%22429.867%22%3EDFF%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e5222a6e-4717-4f08-99d7-7cde897060ca",
              "type": "basic.code",
              "data": {
                "code": "// D flip-flop\n\nreg q = 1'b0;\n\nalways @(posedge clk)\nbegin\n  q <= d;\nend\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 432,
                "y": 128
              },
              "size": {
                "width": 368,
                "height": 272
              }
            },
            {
              "id": "6855f64f-fa1c-4371-b2e1-a98970674a96",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 232,
                "y": 168
              }
            },
            {
              "id": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 864,
                "y": 232
              }
            },
            {
              "id": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 304
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "d"
              }
            },
            {
              "source": {
                "block": "6855f64f-fa1c-4371-b2e1-a98970674a96",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "q"
              },
              "target": {
                "block": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "32200dc0915d45d6ec035bcec61c8472f0cc7b88": {
      "package": {
        "name": "NOT",
        "version": "1.0.0",
        "description": "NOT logic gate",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2291.33%22%20height=%2245.752%22%20version=%221%22%3E%3Cpath%20d=%22M0%2020.446h27v2H0zM70.322%2020.447h15.3v2h-15.3z%22/%3E%3Cpath%20d=%22M66.05%2026.746c-2.9%200-5.3-2.4-5.3-5.3s2.4-5.3%205.3-5.3%205.3%202.4%205.3%205.3-2.4%205.3-5.3%205.3zm0-8.6c-1.8%200-3.3%201.5-3.3%203.3%200%201.8%201.5%203.3%203.3%203.3%201.8%200%203.3-1.5%203.3-3.3%200-1.8-1.5-3.3-3.3-3.3z%22/%3E%3Cpath%20d=%22M25.962%202.563l33.624%2018.883L25.962%2040.33V2.563z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "// NOT logic gate\n\nassign c = ~ a;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              }
            },
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "ac25f3dc1b846b76fe6fcd9f06ccc8c350ba8be9": {
      "package": {
        "name": "UART",
        "version": "1.0",
        "description": "UART transceiver",
        "author": "marble",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "f1d139f6-26ac-4ca9-a1f2-ec6baa9047f1",
              "type": "basic.output",
              "data": {
                "name": "BSY"
              },
              "position": {
                "x": 1064,
                "y": 280
              }
            },
            {
              "id": "5d826bc8-ee5a-48df-b4ff-3d8457a83c92",
              "type": "basic.output",
              "data": {
                "name": "TX"
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
                "size": 9
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
                "name": "IRQ"
              },
              "position": {
                "x": 1064,
                "y": 424
              }
            },
            {
              "id": "c90820fb-6047-46d8-a6c9-48e4ce4723ed",
              "type": "basic.input",
              "data": {
                "name": "CLK",
                "pins": [
                  {
                    "index": "0",
                    "name": "",
                    "value": ""
                  }
                ],
                "virtual": false,
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
                "clock": false
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
                "size": 9
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
                "clock": false
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
                "block": "c90820fb-6047-46d8-a6c9-48e4ce4723ed",
                "port": "out"
              },
              "target": {
                "block": "981e91c8-6e51-4f07-8e3b-819a0031c929",
                "port": "288c15e0-8eb3-4075-97b5-a1c8d4381d81"
              }
            },
            {
              "source": {
                "block": "c90820fb-6047-46d8-a6c9-48e4ce4723ed",
                "port": "out"
              },
              "target": {
                "block": "f9823643-b480-4922-815e-a6364895fd0d",
                "port": "4b124a1b-499f-47d6-a037-58861624e7a5"
              },
              "vertices": [
                {
                  "x": 712,
                  "y": 536
                }
              ]
            }
          ]
        }
      }
    },
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
                "code": "/* Normally you would use enums here, but\n * for some reasons I can't use enums.\n */\n\nparameter\n  IDLE      = 1'b0,\n  TRANSMIT  = 1'b1;\n  \nparameter TICKS_PER_BIT = $rtoi(F_CLK/BAUD);\n\nreg [($bits(TICKS_PER_BIT)-1):0] timer;\ninitial timer = TICKS_PER_BIT;\n\nreg [1:0] state;\ninitial state = IDLE;\n\nreg busy, tx;\ninitial busy = 0;\ninitial tx = 1;\n\nreg [(N_BITS+2-1):0] buffer;    // we need space for start and stop bit\nreg [($bits(N_BITS))-1:0] bit_idx;\ninitial bit_idx = 0;\n\nalways @(posedge CLK) begin\n  case (state)\n    IDLE: begin\n      if (1 == TRIG) begin\n        busy <= 1;  // tell the world we are busy\n        buffer <= {1'b1, DATA[(N_BITS-1):0], 1'b0}; // add start and stop bit\n        bit_idx <= 0;   // reset bit index\n        timer <= TICKS_PER_BIT; // reset timer\n        state <= TRANSMIT;  // change state to transmit\n      end\n    end\n    TRANSMIT: begin\n      if (1 == timer) begin // if timer ran out\n        if ((N_BITS+2) > bit_idx) begin // if not all bits have been sent\n          tx <= buffer[bit_idx];    // apply bit to outgoing singal\n          bit_idx <= bit_idx + 1;   // increment bit index\n          timer <= TICKS_PER_BIT;   // reset timer\n        end else begin\n          state <= IDLE;    // change state\n          busy <= 0;  // tell the world we are ready\n        end\n      end else begin\n        timer <= timer-1;\n      end\n    end\n  endcase\nend\n\nassign BSY = busy;\nassign TX = tx;",
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
                "code": "/* Normally you would use enums here, but\n * for some reasons I can't use enums.\n */\n\nparameter TICKS_PER_BIT = $rtoi(F_CLK/BAUD);\n\nparameter\n  IDLE      = 1'b0,\n  RECEIVE   = 1'b1;\n\nreg [($bits(TICKS_PER_BIT)-1):0] timer;\ninitial timer = TICKS_PER_BIT;\n\nreg [1:0] state;\ninitial state = IDLE;\n\nreg irq, rx;\ninitial irq = 0;\ninitial rx = 1;\n\nreg [(N_BITS-1):0] buffer, data;\nreg [($bits(N_BITS))-1:0] bit_idx;\ninitial bit_idx = 0;\n\nalways @(posedge CLK)\n  rx <= RX;                             // filter out metastability\n\nalways @(posedge CLK) begin\n  case (state)\n    IDLE: begin\n      if (0 == rx) begin                // start condition\n        buffer <= 0;                    // reset input buffer\n        bit_idx <= 0;                   // reset bit index\n        timer <= TICKS_PER_BIT>>1;      // start sampling in the middle of the signal\n        state <= RECEIVE;               // change state to start bit\n      end\n      irq <= 0;\n    end\n    RECEIVE: begin\n      if (1 >= timer) begin\n        if ((N_BITS+1) > bit_idx) begin // collect every bit from start to stop\n          if ((0 == bit_idx) & (1 == rx)) begin // start bit is not 0 -> glitch\n            state <= IDLE;  // go back to idle\n          end else begin    // start bit was ok\n            buffer[bit_idx-1] <= rx;    // transfer bit into buffer\n          end\n          bit_idx <= bit_idx + 1;   // increment bit index\n        end else begin  // if all bits are collected\n          state <= IDLE;    // change state\n          if (1 == rx) begin // if stop bit are correct\n            irq <= 1;   // notify world of new received message\n            data[N_BITS-1:0] <= buffer;   // copy message to output. omit start and stop bit\n          end\n        end\n        timer <= TICKS_PER_BIT; // reset timer\n      end else begin\n        timer <= timer-1;\n      end\n    end\n  endcase\nend\n\nassign IRQ = irq;\nassign DATA = data;",
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