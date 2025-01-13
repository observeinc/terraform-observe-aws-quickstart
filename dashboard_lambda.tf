resource "observe_dashboard" "lambda_instances" {
  description = "Lambda Instances Dashboard"
  layout = jsonencode(
    {
      autoPack = true
      gridLayout = {
        sections = [
          {
            card = {
              cardType = "section"
              closed   = false
              title    = "Dashboard content"
            }
            items = [
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-v7qdl4bb"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-mftjtwhp"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 4
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-08nkd6o9"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 8
                  y = 0
                }
              },
              {
                card = {
                  cardType    = "parameter"
                  parameterId = "groupBy"
                }
                layout = {
                  h = 4
                  resizeHandles = [
                    "e",
                    "w",
                  ]
                  w = 4
                  x = 0
                  y = 12
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-aq4lgcxe"
                }
                layout = {
                  h = 13
                  w = 12
                  x = 0
                  y = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-ch1s0giw"
                }
                layout = {
                  h = 15
                  w = 6
                  x = 0
                  y = 29
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-xdczdd5f"
                }
                layout = {
                  h = 15
                  w = 6
                  x = 6
                  y = 29
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-hn099j57"
                }
                layout = {
                  h = 15
                  w = 6
                  x = 0
                  y = 44
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-olgvcooi"
                }
                layout = {
                  h = 15
                  w = 6
                  x = 6
                  y = 44
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-4l182fkp"
                }
                layout = {
                  h = 14
                  w = 12
                  x = 0
                  y = 59
                }
              },
            ]
          },
        ]
      }
      stageListLayout = {
        isModified = false
        parameters = [
          {
            autoApply = true
            datasetId = local.aws_asset_inventory
            defaultValue = {
              datasetref = {
                datasetId = local.aws_asset_inventory
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            filterActions         = []
            id                    = "input-parameter-pi3bp6ra"
            name                  = "AWS Asset Inventory"
            preFilterActions = [
              {
                params = {
                  columnId   = "Service"
                  columnType = "string"
                  filterVerb = "ever"
                  values = [
                    {
                      isExcluding = false
                      value       = "Lambda"
                    },
                  ]
                }
                summary = null
                type    = "FilterValues"
              },
              {
                params = {
                  columnId   = "ServiceSubType"
                  columnType = "string"
                  filterVerb = "ever"
                  values = [
                    {
                      isExcluding = false
                      value       = "Function"
                    },
                  ]
                }
                summary = null
                type    = "FilterValues"
              },
            ]
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "Architecture"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "groupBy"
            name                  = "Group By"
            source                = "CustomData"
            sourceCustomData = [
              [
                "Architecture",
                "Architecture",
              ],
              [
                "State",
                "State",
              ],
              [
                "Memory Size",
                "MemorySize",
              ],
              [
                "Run Time",
                "RunTime",
              ],
              [
                "Storage Size",
                "StorageSize",
              ],
              [
                "Function Name",
                "FunctionName",
              ],
            ]
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
        ]
        timeRange = {
          display               = "Past 24 hours"
          endTime               = null
          millisFromCurrentTime = 172800000
          originalDisplay       = "Past 24 hours"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_24_HOURS"
          }
        }
      }
    }
  )
  name = local.lambda_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.aws_asset_inventory
          }
        }
        id   = "input-parameter-pi3bp6ra"
        name = "AWS Asset Inventory"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
        }
      },
      {
        defaultValue = {
          string = "Architecture"
        }
        id   = "groupBy"
        name = "Group By"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "STRING"
        }
      },
    ]
  )
  stages = jsonencode(
    [
      {
        id = "stage-v7qdl4bb"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "AWS Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          cardLinks = []
          dataLinks = []
          dataTableViewState = {
            cellValuePresentation       = []
            columnOrderOverride         = []
            columnVisibility            = []
            columnWidths                = []
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = []
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableWidth = 0
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 0
          inputList     = []
          isInternal    = false
          label         = "Instances"
          managers = [
            {
              id         = "2lmfvtga"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color           = "Default"
                  colorConfigType = "Color"
                  fieldConfig = {
                    unit    = ""
                    visible = false
                  }
                  fieldValue      = ""
                  singleStatLabel = "Instances"
                  thresholds      = null
                  type            = "singlefield"
                }
                source = {
                  table = {
                    field = "A_AWSAssetInventory_count_distinct_exact"
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      fnArgs     = null
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "singlefield"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "singlevalue"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 10000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
              "ResultKindData",
              "ResultKindColumnStats",
              "ResultKindVolumeStats",
              "ResultKindProgress",
            ]
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_AWSAssetInventory_count_distinct_exact"
              },
            ]
            wantBuckets = 150
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-d9dozfmj"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    aggregationMode = "aggregate"
                    expressions = [
                      {
                        dataVis = {
                          config = {
                            color           = "Default"
                            colorConfigType = "Color"
                            fieldConfig = {
                              unit    = ""
                              visible = false
                            }
                            fieldValue      = ""
                            singleStatLabel = "Instances"
                            thresholds      = null
                            type            = "singlefield"
                          }
                          source = {
                            table = {
                              field = "A_AWSAssetInventory_count_distinct_exact"
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                fnArgs     = null
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "singlefield"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "singlevalue"
                        }
                        expressionIdentifier = "A"
                        field                = "***row***"
                        filterActions        = []
                        groupBy              = []
                        id                   = "datasetQueryExpression-yvunepxk"
                        inputSource = {
                          parameterId = "input-parameter-pi3bp6ra"
                        }
                        invalidGroupBy         = []
                        lookupActions          = []
                        noDataVisBindingUpdate = false
                        summaryFunction        = "count_distinct_exact"
                        summaryMode            = "over-time"
                        type                   = "datasetQueryExpression"
                        valueColumnId          = "A_AWSAssetInventory_count_distinct_exact"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-m7mw0t2p"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-yvunepxk",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-09sajioe"
              index         = 1
              isPinned      = false
              opal = [
                "timechart options(empty_bins:true), A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "OPAL"
            inspectRailCollapsed = true
            inspectRailPinned    = false
            inspectRailWidth     = 640
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler     = true
            stageOutputHeight = 64.36781609195403
            stageTab          = "vis"
            thumbnailId       = "94jry6o8"
          }
        }
        params   = null
        pipeline = "timechart options(empty_bins:true), A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()"
      },
      {
        id = "stage-08nkd6o9"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "AWS Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          cardLinks = []
          dataLinks = []
          dataTableViewState = {
            cellValuePresentation = []
            columnOrderOverride   = []
            columnVisibility      = []
            columnWidths = [
              [
                "architecture",
                174,
              ],
            ]
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = []
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableWidth = 2140
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 1
          inputList = [
            {
              id          = "query-input-5jrmwyq3"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-pi3bp6ra"
            },
          ]
          isInternal = false
          label      = "Instances by Architecture"
          managers = [
            {
              id         = "ta5ce5ve"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  colorMapping = [
                    {
                      color = ""
                      key   = ""
                    },
                  ]
                  innerRadius = 0.6
                  legend = {
                    showNullAsOption = "null"
                    type             = "list"
                    visible          = true
                  }
                  type = "arc"
                }
                source = {
                  table = {
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "count"
                  }
                  type = "table"
                }
                type = "circular"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
              "ResultKindData",
              "ResultKindColumnStats",
              "ResultKindVolumeStats",
              "ResultKindProgress",
            ]
            rollup      = {}
            wantBuckets = 1
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS Asset Inventory"
              id            = "step-s52e9z68"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-pnehp5x6"
              index         = 1
              isPinned      = false
              opal = [
                "make_col architecture:string(Configuration.architectures[0])",
                "timechart options(empty_bins:true), count:count_distinct_exact(AccountID, Region, Service, ID), group_by(architecture)",
                "",
                "",
                "",
                "",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "OPAL"
            inspectRailCollapsed = true
            inspectRailPinned    = false
            inspectRailWidth     = 640
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler     = true
            stageOutputHeight = 55.97701149425287
            stageTab          = "vis"
            thumbnailId       = "7g14tb3d"
          }
        }
        params   = null
        pipeline = <<-EOT
                    make_col architecture:string(Configuration.architectures[0])
                    timechart options(empty_bins:true), count:count_distinct_exact(AccountID, Region, Service, ID), group_by(architecture)
                EOT
      },
      {
        id = "stage-mftjtwhp"
        input = [
          {
            datasetId   = null
            datasetPath = null
            inputName   = "AWS Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          cardLinks = []
          dataLinks = []
          dataTableViewState = {
            cellValuePresentation = []
            columnOrderOverride = [
              [
                0,
                "Name",
              ],
            ]
            columnVisibility            = []
            columnWidths                = []
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = []
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableWidth = 2140
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 2
          inputList = [
            {
              id          = "query-input-8lk7n9zp"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-pi3bp6ra"
            },
          ]
          isInternal = false
          label      = "Instances by State"
          managers = [
            {
              id         = "p262byp0"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  innerRadius = 0.6
                  legend = {
                    type    = "list"
                    visible = true
                  }
                  type = "arc"
                }
                source = {
                  table = {
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "count"
                  }
                  type = "table"
                }
                type = "circular"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 1000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
              "ResultKindData",
              "ResultKindColumnStats",
              "ResultKindVolumeStats",
              "ResultKindProgress",
            ]
            rollup      = {}
            wantBuckets = 1
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS Asset Inventory"
              id            = "step-ehf6gan9"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              action = {
                params = {
                  autoConvertType = true
                  checkedKeys = [
                    "state",
                  ]
                  columnId   = "Configuration"
                  columnType = "object"
                  existingColumnIds = [
                    "Valid From",
                    "Valid To",
                    "Name",
                    "AccountID",
                    "Region",
                    "Service",
                    "ServiceSubType",
                    "ID",
                    "ARN",
                    "Configuration",
                    "Tags",
                  ]
                  expandedKeys = [
                    "state",
                  ]
                  extraKeys = []
                  typeByPath = {
                    state = "string"
                  }
                }
                summary = null
                type    = "ExtractJSON"
              }
              customSummary = "string(Configuration.state)"
              id            = "step-iocy2z6l"
              index         = 1
              isPinned      = false
              opal = [
                "make_col state:string(Configuration.state)",
              ]
              type = "unknown"
            },
            {
              customSummary = ""
              id            = "step-aod8mj0g"
              index         = 2
              isPinned      = false
              opal = [
                "timechart options(empty_bins:true), count:count_distinct_exact(AccountID, Region, Service, ID), group_by(state)",
                "",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "OPAL"
            inspectRailCollapsed = true
            inspectRailPinned    = false
            inspectRailWidth     = 640
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
            thumbnailId   = "ktm1byga"
          }
        }
        params   = null
        pipeline = <<-EOT
                    make_col state:string(Configuration.state)
                    timechart options(empty_bins:true), count:count_distinct_exact(AccountID, Region, Service, ID), group_by(state)
                EOT
      },
      {
        id = "stage-aq4lgcxe"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/RDS/InvocationCount"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "AWS Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          cardLinks = []
          dataLinks = []
          dataTableViewState = {
            cellValuePresentation = []
            columnOrderOverride = [
              [
                0,
                "valid_from",
              ],
              [
                1,
                "valid_to",
              ],
            ]
            columnVisibility = [
              [
                "MemorySize",
                true,
              ],
            ]
            columnWidths = [
              [
                "metric",
                371,
              ],
              [
                "invocation_count",
                344,
              ],
              [
                "dimensions",
                800,
              ],
              [
                "_c_rank",
                152,
              ],
              [
                "Resource",
                561,
              ],
            ]
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = []
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableWidth = 2140
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 3
          inputList = [
            {
              datasetId   = local.metrics
              id          = "query-input-koybs932"
              inputName   = "AWS/RDS/InvocationCount"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              id          = "query-input-p9w9feqm"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-pi3bp6ra"
            },
          ]
          isInternal = false
          label      = "Total Errors (Top 25)"
          managers = [
            {
              id         = "3wcyn9kd"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  cohort = "groupBy"
                  colorScaleConfig = {
                    bounds = {
                      end   = 2500
                      start = 0
                    }
                    colorScaleType         = "Sequential"
                    divergingColorScale    = "RdGy"
                    divergingScaleMidpoint = 0
                    sequentialColorScale   = "YlOrRd"
                  }
                  nodeColorConfigType = "Range"
                  nodeColorField      = "errors"
                  nodeColorMapping = [
                    {
                      color = "Default"
                      key   = "__default__"
                    },
                    {
                      color = ""
                      key   = ""
                    },
                  ]
                  nodeInnerTextField = "errors"
                  nodeInnerTextUnit  = "errors"
                  nodeTooltipFields  = []
                  type               = "hex"
                }
                source = {
                  table = {
                    type = "hex"
                  }
                  type = "table"
                }
                type = "hex"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            limit          = 10000
            linkify        = true
            loadEverything = false
            progressive    = true
            resultKinds = [
              "ResultKindSchema",
              "ResultKindData",
              "ResultKindColumnStats",
              "ResultKindVolumeStats",
              "ResultKindProgress",
            ]
            rollup      = {}
            wantBuckets = 400
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS/RDS/InvocationCount"
              id            = "step-vddsah0k"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-wbzc5qp6"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.FunctionName) or dimensions.FunctionName = parse_json(\"null\")))",
                "filter (not (is_null(dimensions.Resource)))",
                "",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "",
                "align options(bins:1), errors:sum(m(\"AWS/Lambda/Errors.sum\"))",
                "aggregate errors:sum(errors), group_by(^Resource...)",
                "",
              ]
              type = "unknown"
            },
            {
              action = {
                params = {
                  columnId   = "errors"
                  columnType = "float64"
                  start      = 1
                }
                summary = null
                type    = "FilterRange"
              }
              customSummary = "errors"
              id            = "step-is61xqvw"
              index         = 2
              isPinned      = false
              opal = [
                "filter errors >= 1",
              ]
              type = "unknown"
            },
            {
              customSummary = ""
              id            = "step-qem9r6z5"
              index         = 3
              isPinned      = false
              opal = [
                "",
                "topk 25, sum(errors)",
                "lookup ^Resource, \"Configuration\": ^Resource.Configuration",
                "",
                "",
                "make_col",
                "    Architecture: string(Configuration.architectures[0]),",
                "    State: string(Configuration.state),",
                "    RunTime: string(Configuration.runtime),",
                "    MemorySize: string(Configuration.memorySize),",
                "    StorageSize: string(Configuration.ephemeralStorage.size),",
                "    FunctionName: string(Configuration.functionName)",
                "",
                "make_col groupBy: case(",
                "     $groupBy=\"Architecture\", Architecture,",
                "     $groupBy=\"State\", State,",
                "     $groupBy=\"RunTime\", RunTime,    ",
                "     $groupBy=\"MemorySize\", MemorySize, ",
                "     $groupBy=\"StorageSize\", StorageSize, ",
                "     $groupBy=\"FunctionName\", FunctionName,",
                "     true, Architecture",
                "    )",
                "",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "OPAL"
            inspectRailCollapsed = true
            inspectRailPinned    = false
            inspectRailWidth     = 640
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler     = true
            stageOutputHeight = 46.32183908045977
            stageTab          = "vis"
            thumbnailId       = "vvh6k7wu"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.FunctionName) or dimensions.FunctionName = parse_json("null")))
                    filter (not (is_null(dimensions.Resource)))
                    
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    
                    align options(bins:1), errors:sum(m("AWS/Lambda/Errors.sum"))
                    aggregate errors:sum(errors), group_by(^Resource...)
                    
                    filter errors >= 1
                    
                    topk 25, sum(errors)
                    lookup ^Resource, "Configuration": ^Resource.Configuration
                    
                    
                    make_col
                        Architecture: string(Configuration.architectures[0]),
                        State: string(Configuration.state),
                        RunTime: string(Configuration.runtime),
                        MemorySize: string(Configuration.memorySize),
                        StorageSize: string(Configuration.ephemeralStorage.size),
                        FunctionName: string(Configuration.functionName)
                    
                    make_col groupBy: case(
                         $groupBy="Architecture", Architecture,
                         $groupBy="State", State,
                         $groupBy="RunTime", RunTime,    
                         $groupBy="MemorySize", MemorySize, 
                         $groupBy="StorageSize", StorageSize, 
                         $groupBy="FunctionName", FunctionName,
                         true, Architecture
                        )
                EOT
      },
      {
        id = "stage-ch1s0giw"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/Lambda/Invocationssum_from_AWS-Quickstart/Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "AWS Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          cardLinks = []
          dataLinks = []
          dataTableViewState = {
            cellValuePresentation       = []
            columnOrderOverride         = []
            columnVisibility            = []
            columnWidths                = []
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = []
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableWidth = 0
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 4
          inputList     = []
          isInternal    = false
          label         = "Invocations"
          managers = [
            {
              id         = "gkqcihbu"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = true
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    axisLabel = "Count"
                    unit      = ""
                    visible   = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSLambdaInvocationssum_sum"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            rollup      = {}
            wantBuckets = 250
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-gemdukjo"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    aggregationMode = "aggregate"
                    expressions = [
                      {
                        alignDuration = {
                          num  = 5
                          unit = "minute"
                        }
                        autoFrame = true
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              type    = "list"
                              visible = true
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              axisLabel = "Count"
                              unit      = ""
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSLambdaInvocationssum_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        expressionIdentifier = "A"
                        filterActions = [
                          {
                            params = {
                              checkedKeys          = []
                              columnId             = "dimensions"
                              columnType           = "object"
                              differentPathsUseAnd = true
                              expandedKeys         = []
                              filterVerb           = "filter"
                              paths = {
                                Resource = false
                              }
                              valuesForPath = {}
                            }
                            summary = null
                            type    = "FilterJSONKey"
                          },
                          {
                            params = {
                              columnId    = "Resource"
                              columnType  = "link"
                              datasetKind = "Event"
                              fk = {
                                dstFields = [
                                  "AccountID",
                                  "Region",
                                  "Service",
                                  "ID",
                                ]
                                label = "Resource"
                                srcFields = [
                                  "account_id",
                                  "region",
                                  "service",
                                  "resourceId",
                                ]
                                targetDataset = local.aws_asset_inventory
                                type          = "linked"
                              }
                              parameterFilters = [
                                {
                                  parameterId = "input-parameter-pi3bp6ra"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 6
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            label = "Resource"
                            srcFields = [
                              "account_id",
                              "region",
                              "service",
                              "resourceId",
                            ]
                          },
                        ]
                        id             = "metricExpression-lsgwxmlz"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-14T20:57:00Z"
                            tags = [
                              {
                                column = "resourceId"
                                path   = ""
                              },
                              {
                                column = "account_id"
                                path   = ""
                              },
                              {
                                column = "region"
                                path   = ""
                              },
                              {
                                column = "service"
                                path   = ""
                              },
                              {
                                column = "dimensions"
                                path   = "FunctionName"
                              },
                              {
                                column = "dimensions"
                                path   = "Resource"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/Lambda/Invocations.sum"
                          nameWithPath        = "AWS/Lambda/Invocations.sum (AWS-Quickstart/Metrics)"
                          rollup              = "sum"
                          state               = "Active"
                          suggestedBucketSize = "120000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = true
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSLambdaInvocationssum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-ig6tfyb5"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-lsgwxmlz",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-ynicb1yy"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.Resource) or dimensions.Resource = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSLambdaInvocationssum_sum:sum(m(\"AWS/Lambda/Invocations.sum\"))",
                "aggregate A_AWSLambdaInvocationssum_sum:sum(A_AWSLambdaInvocationssum_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            inspectRailCollapsed = true
            inspectRailPinned    = false
            inspectRailWidth     = 640
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
            thumbnailId   = "8twsknsw"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.Resource) or dimensions.Resource = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSLambdaInvocationssum_sum:sum(m("AWS/Lambda/Invocations.sum"))
                    aggregate A_AWSLambdaInvocationssum_sum:sum(A_AWSLambdaInvocationssum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-hn099j57"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/Lambda/Errorssum_from_AWS-Quickstart/Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "AWS Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          cardLinks = []
          dataLinks = []
          dataTableViewState = {
            cellValuePresentation       = []
            columnOrderOverride         = []
            columnVisibility            = []
            columnWidths                = []
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = []
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableWidth = 0
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 5
          inputList     = []
          isInternal    = false
          label         = "Errors"
          managers = [
            {
              id         = "g0f03paf"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = true
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    axisLabel = "Count"
                    unit      = ""
                    visible   = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSLambdaErrorssum_sum"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            rollup      = {}
            wantBuckets = 250
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-zm0vbbxq"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    aggregationMode = "aggregate"
                    expressions = [
                      {
                        alignDuration = {
                          num  = 5
                          unit = "minute"
                        }
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              type    = "list"
                              visible = true
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              axisLabel = "Count"
                              unit      = ""
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSLambdaErrorssum_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        expressionIdentifier = "A"
                        filterActions = [
                          {
                            params = {
                              checkedKeys          = []
                              columnId             = "dimensions"
                              columnType           = "object"
                              differentPathsUseAnd = true
                              expandedKeys         = []
                              filterVerb           = "filter"
                              paths = {
                                Resource = false
                              }
                              valuesForPath = {}
                            }
                            summary = null
                            type    = "FilterJSONKey"
                          },
                          {
                            params = {
                              columnId    = "Resource"
                              columnType  = "link"
                              datasetKind = "Event"
                              fk = {
                                dstFields = [
                                  "AccountID",
                                  "Region",
                                  "Service",
                                  "ID",
                                ]
                                label = "Resource"
                                srcFields = [
                                  "account_id",
                                  "region",
                                  "service",
                                  "resourceId",
                                ]
                                targetDataset = local.aws_asset_inventory
                                type          = "linked"
                              }
                              parameterFilters = [
                                {
                                  parameterId = "input-parameter-pi3bp6ra"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            label = "Resource"
                            srcFields = [
                              "account_id",
                              "region",
                              "service",
                              "resourceId",
                            ]
                          },
                        ]
                        id             = "metricExpression-lsgwxmlz"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-14T20:01:00Z"
                            tags = [
                              {
                                column = "resourceId"
                                path   = ""
                              },
                              {
                                column = "account_id"
                                path   = ""
                              },
                              {
                                column = "region"
                                path   = ""
                              },
                              {
                                column = "service"
                                path   = ""
                              },
                              {
                                column = "dimensions"
                                path   = "FunctionName"
                              },
                              {
                                column = "dimensions"
                                path   = "Resource"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/Lambda/Errors.sum"
                          nameWithPath        = "AWS/Lambda/Errors.sum (AWS-Quickstart/Metrics)"
                          rollup              = "sum"
                          state               = "Active"
                          suggestedBucketSize = "120000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = true
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSLambdaErrorssum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-ig6tfyb5"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-lsgwxmlz",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-jbitvqli"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.Resource) or dimensions.Resource = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSLambdaErrorssum_sum:sum(m(\"AWS/Lambda/Errors.sum\"))",
                "aggregate A_AWSLambdaErrorssum_sum:sum(A_AWSLambdaErrorssum_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "OPAL"
            inspectRailCollapsed = true
            inspectRailPinned    = false
            inspectRailWidth     = 640
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
            thumbnailId   = "fslx7mj9"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.Resource) or dimensions.Resource = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSLambdaErrorssum_sum:sum(m("AWS/Lambda/Errors.sum"))
                    aggregate A_AWSLambdaErrorssum_sum:sum(A_AWSLambdaErrorssum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-olgvcooi"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/Lambda/Throttlessum_from_AWS-Quickstart/Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "AWS Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          cardLinks = []
          dataLinks = []
          dataTableViewState = {
            cellValuePresentation       = []
            columnOrderOverride         = []
            columnVisibility            = []
            columnWidths                = []
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = []
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableWidth = 0
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 6
          inputList     = []
          isInternal    = false
          label         = "Throttles"
          managers = [
            {
              id         = "nc33439b"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = true
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    axisLabel = "Count"
                    unit      = ""
                    visible   = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSLambdaThrottlessum_sum"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            rollup      = {}
            wantBuckets = 250
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-pz3w2dcd"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    aggregationMode = "aggregate"
                    expressions = [
                      {
                        alignDuration = {
                          num  = 5
                          unit = "minute"
                        }
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              type    = "list"
                              visible = true
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              axisLabel = "Count"
                              unit      = ""
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSLambdaThrottlessum_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        expressionIdentifier = "A"
                        filterActions = [
                          {
                            params = {
                              checkedKeys          = []
                              columnId             = "dimensions"
                              columnType           = "object"
                              differentPathsUseAnd = true
                              expandedKeys         = []
                              filterVerb           = "filter"
                              paths = {
                                Resource = false
                              }
                              valuesForPath = {}
                            }
                            summary = null
                            type    = "FilterJSONKey"
                          },
                          {
                            params = {
                              columnId    = "Resource"
                              columnType  = "link"
                              datasetKind = "Event"
                              fk = {
                                dstFields = [
                                  "AccountID",
                                  "Region",
                                  "Service",
                                  "ID",
                                ]
                                label = "Resource"
                                srcFields = [
                                  "account_id",
                                  "region",
                                  "service",
                                  "resourceId",
                                ]
                                targetDataset = local.aws_asset_inventory
                                type          = "linked"
                              }
                              parameterFilters = [
                                {
                                  parameterId = "input-parameter-pi3bp6ra"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            label = "Resource"
                            srcFields = [
                              "account_id",
                              "region",
                              "service",
                              "resourceId",
                            ]
                          },
                        ]
                        id             = "metricExpression-lsgwxmlz"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-14T21:35:00Z"
                            tags = [
                              {
                                column = "resourceId"
                                path   = ""
                              },
                              {
                                column = "account_id"
                                path   = ""
                              },
                              {
                                column = "region"
                                path   = ""
                              },
                              {
                                column = "service"
                                path   = ""
                              },
                              {
                                column = "dimensions"
                                path   = "FunctionName"
                              },
                              {
                                column = "dimensions"
                                path   = "Resource"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/Lambda/Throttles.sum"
                          nameWithPath        = "AWS/Lambda/Throttles.sum (AWS-Quickstart/Metrics)"
                          rollup              = "sum"
                          state               = "Active"
                          suggestedBucketSize = "120000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = true
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSLambdaThrottlessum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-ig6tfyb5"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-lsgwxmlz",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-jc43gtu4"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.Resource) or dimensions.Resource = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSLambdaThrottlessum_sum:sum(m(\"AWS/Lambda/Throttles.sum\"))",
                "aggregate A_AWSLambdaThrottlessum_sum:sum(A_AWSLambdaThrottlessum_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "OPAL"
            inspectRailCollapsed = true
            inspectRailPinned    = false
            inspectRailWidth     = 640
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
            thumbnailId   = "jeg49cy7"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.Resource) or dimensions.Resource = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSLambdaThrottlessum_sum:sum(m("AWS/Lambda/Throttles.sum"))
                    aggregate A_AWSLambdaThrottlessum_sum:sum(A_AWSLambdaThrottlessum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-xdczdd5f"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/Lambda/Durationmax_from_AWS-Quickstart/Metrics"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "AWS Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          cardLinks = []
          dataLinks = []
          dataTableViewState = {
            cellValuePresentation       = []
            columnOrderOverride         = []
            columnVisibility            = []
            columnWidths                = []
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = []
            selection = {
              cells                = {}
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "table"
            }
            tableWidth = 0
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 7
          inputList     = []
          isInternal    = false
          label         = "Max Duration"
          managers = [
            {
              id         = "owwohjkr"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = true
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    axisLabel = "Count"
                    unit      = "milliseconds"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSLambdaDurationmax_sum"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "timeseries"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            rollup      = {}
            wantBuckets = 250
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-eutz32jc"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    aggregationMode = "aggregate"
                    expressions = [
                      {
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              type    = "list"
                              visible = true
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              axisLabel = "Count"
                              unit      = "milliseconds"
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSLambdaDurationmax_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        expressionIdentifier = "A"
                        filterActions = [
                          {
                            params = {
                              checkedKeys          = []
                              columnId             = "dimensions"
                              columnType           = "object"
                              differentPathsUseAnd = true
                              expandedKeys         = []
                              filterVerb           = "filter"
                              paths = {
                                Resource = false
                              }
                              valuesForPath = {}
                            }
                            summary = null
                            type    = "FilterJSONKey"
                          },
                          {
                            params = {
                              columnId    = "Resource"
                              columnType  = "link"
                              datasetKind = "Event"
                              fk = {
                                dstFields = [
                                  "AccountID",
                                  "Region",
                                  "Service",
                                  "ID",
                                ]
                                label = "Resource"
                                srcFields = [
                                  "account_id",
                                  "region",
                                  "service",
                                  "resourceId",
                                ]
                                targetDataset = local.aws_asset_inventory
                                type          = "linked"
                              }
                              parameterFilters = [
                                {
                                  parameterId = "input-parameter-pi3bp6ra"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            label = "Resource"
                            srcFields = [
                              "account_id",
                              "region",
                              "service",
                              "resourceId",
                            ]
                          },
                        ]
                        id             = "metricExpression-lsgwxmlz"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-14T01:19:00Z"
                            tags = [
                              {
                                column = "resourceId"
                                path   = ""
                              },
                              {
                                column = "account_id"
                                path   = ""
                              },
                              {
                                column = "region"
                                path   = ""
                              },
                              {
                                column = "service"
                                path   = ""
                              },
                              {
                                column = "dimensions"
                                path   = "FunctionName"
                              },
                              {
                                column = "dimensions"
                                path   = "Resource"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/Lambda/Duration.max"
                          nameWithPath        = "AWS/Lambda/Duration.max (AWS-Quickstart/Metrics)"
                          rollup              = "max"
                          state               = "Active"
                          suggestedBucketSize = "120000000000"
                          type                = "gauge"
                          unit                = "ms"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSLambdaDurationmax_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-ig6tfyb5"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-lsgwxmlz",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-bxwyr0nb"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.Resource) or dimensions.Resource = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSLambdaDurationmax_sum:max(m(\"AWS/Lambda/Duration.max\"))",
                "aggregate A_AWSLambdaDurationmax_sum:sum(A_AWSLambdaDurationmax_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            inspectRailCollapsed = true
            inspectRailPinned    = false
            inspectRailWidth     = 640
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler = true
            stageTab      = "vis"
            thumbnailId   = "d1xnk0il"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.Resource) or dimensions.Resource = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSLambdaDurationmax_sum:max(m("AWS/Lambda/Duration.max"))
                    aggregate A_AWSLambdaDurationmax_sum:sum(A_AWSLambdaDurationmax_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-4l182fkp"
        input = [
          {
            datasetId   = local.logs
            datasetPath = null
            inputName   = "AWS-Quickstart/Logs"
            inputRole   = "Data"
            stageId     = null
          },
          {
            datasetId   = null
            datasetPath = null
            inputName   = "AWS Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          cardLinks = []
          dataLinks = []
          dataTableViewState = {
            cellValuePresentation = []
            columnOrderOverride   = []
            columnVisibility = [
              [
                "accountId",
                false,
              ],
              [
                "region",
                false,
              ],
              [
                "service",
                false,
              ],
              [
                "resourceId",
                false,
              ],
            ]
            columnWidths = [
              [
                "logGroup",
                423,
              ],
              [
                "level",
                110,
              ],
              [
                "FunctionName",
                284,
              ],
              [
                "Resource",
                514,
              ],
            ]
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = []
            selection = {
              cells = {
                message = {}
              }
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "cell"
            }
            tableWidth = 2005
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 8
          inputList = [
            {
              datasetId   = local.logs
              id          = "query-input-3fme1tc1"
              inputName   = "AWS-Quickstart/Logs"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              id          = "query-input-4tta1fg3"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-pi3bp6ra"
            },
          ]
          isInternal = false
          label      = "Recent 50 Errors"
          managers   = []
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            rollup      = {}
            wantBuckets = 400
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS-Quickstart/Logs"
              id            = "step-by4fsv6h"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-mosh3ein"
              index         = 1
              isPinned      = false
              opal = [
                "exists accountId = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "",
              ]
              type = "unknown"
            },
            {
              action = {
                params = {
                  autoConvertType = true
                  checkedKeys = [
                    "jsonPayload.level",
                  ]
                  columnId   = "message"
                  columnType = "object"
                  existingColumnIds = [
                    "timestamp",
                    "Resource",
                    "accountId",
                    "region",
                    "service",
                    "resourceId",
                    "id",
                    "message",
                    "logGroup",
                    "logStream",
                    "messageType",
                  ]
                  expandedKeys = [
                    "jsonPayload.level",
                  ]
                  extraKeys = []
                  typeByPath = {
                    "jsonPayload.level" = "string"
                  }
                }
                summary = null
                type    = "ExtractJSON"
              }
              customSummary = "string(message.jsonPayload.level)"
              id            = "step-a3icsv7y"
              index         = 2
              isPinned      = false
              opal = [
                "make_col level:string(message.jsonPayload.level)",
              ]
              type = "unknown"
            },
            {
              action = {
                params = {
                  autoConvertType = true
                  checkedKeys = [
                    "textPayload",
                  ]
                  columnId   = "message"
                  columnType = "object"
                  existingColumnIds = [
                    "timestamp",
                    "Resource",
                    "accountId",
                    "region",
                    "service",
                    "resourceId",
                    "id",
                    "message",
                    "level",
                    "logGroup",
                    "logStream",
                    "messageType",
                  ]
                  expandedKeys = [
                    "textPayload",
                  ]
                  extraKeys = []
                  typeByPath = {
                    textPayload = "string"
                  }
                }
                summary = null
                type    = "ExtractJSON"
              }
              customSummary = "string(message.textPayload)"
              id            = "step-mo8fy4a7"
              index         = 3
              isPinned      = false
              opal = [
                "make_col textPayload:string(message.textPayload)",
              ]
              type = "unknown"
            },
            {
              action = {
                params = {
                  columnId = "textPayload"
                  regex    = "/\\[(?P<log_level>ERROR)\\]/"
                  sampleText = [
                    <<-EOT
                                            [ERROR] KeyError: 'RequestType'
Traceback (most recent call last):
  File "/var/task/index.py", line 17, in lambda_handler
    if event["RequestType"] == "Create":
                                        EOT
                    ,
                  ]
                  type = "ExtractRegex"
                }
                summary = null
                type    = "ExtractRegex"
              }
              customSummary = "textPayload regex /\\[(?P<log_level>ERROR)\\]/"
              id            = "step-hk0ht7y6"
              index         = 4
              isPinned      = false
              opal = [
                "extract_regex textPayload, /\\[(?P<log_level>ERROR)\\]/",
              ]
              type = "unknown"
            },
            {
              customSummary = ""
              id            = "step-oxt54by7"
              index         = 5
              isPinned      = false
              opal = [
                "",
                "make_col level_combined: coalesce(level, log_level, \"null\")",
                "filter level_combined = \"ERROR\"",
                "",
                "set_col_visible",
                "    textPayload: false,",
                "    log_level: false,",
                "    level:false,",
                "    level_combined: false",
                "    ",
                "",
              ]
              type = "unknown"
            },
            {
              action = {
                params = {
                  columns = [
                    {
                      asc = false
                      id  = "timestamp"
                    },
                  ]
                }
                summary = null
                type    = "SortDescending"
              }
              customSummary = ""
              id            = "step-akoh0r8f"
              index         = 6
              isPinned      = false
              opal = [
                "sort desc(timestamp)",
              ]
              type = "unknown"
            },
            {
              customSummary = ""
              id            = "step-6nz115ki"
              index         = 7
              isPinned      = false
              opal = [
                "limit 50",
                "",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "OPAL"
            inspectRailCollapsed = true
            inspectRailPinned    = false
            inspectRailWidth     = 640
            railCollapseState = {
              inputsOutputs = false
              minimap       = false
              note          = true
              script        = true
            }
            showTimeRuler     = true
            stageOutputHeight = 51.30237825594564
            stageTab          = "table"
            thumbnailId       = "e38d6z92"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists accountId = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    
                    make_col level:string(message.jsonPayload.level)
                    make_col textPayload:string(message.textPayload)
                    extract_regex textPayload, /\[(?P<log_level>ERROR)\]/
                    
                    make_col level_combined: coalesce(level, log_level, "null")
                    filter level_combined = "ERROR"
                    
                    set_col_visible
                        textPayload: false,
                        log_level: false,
                        level:false,
                        level_combined: false
                        
                    
                    sort desc(timestamp)
                    limit 50
                EOT
      },
    ]
  )
  workspace = local.workspace
}

