# terraform import observe_dashboard.sqs_services 41054051
resource "observe_dashboard" "sqs_services" {
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
                  stageId  = "stage-vyy6zut2"
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
                  stageId  = "stage-drc4l0l9"
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
                  stageId  = "stage-gq7q2d8q"
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
                  stageId  = "stage-vvnpra3a"
                }
                layout = {
                  h = 25
                  w = 12
                  x = 0
                  y = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-z82tspqu"
                }
                layout = {
                  h = 18
                  w = 6
                  x = 0
                  y = 41
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-dcwhlhvy"
                }
                layout = {
                  h = 18
                  w = 6
                  x = 6
                  y = 41
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-txhxj2kv"
                }
                layout = {
                  h = 17
                  w = 6
                  x = 0
                  y = 59
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-bfrw9s43"
                }
                layout = {
                  h = 17
                  w = 6
                  x = 6
                  y = 59
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-yk8ci7ll"
                }
                layout = {
                  h = 18
                  w = 6
                  x = 0
                  y = 76
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-wwsekg1r"
                }
                layout = {
                  h = 18
                  w = 6
                  x = 6
                  y = 76
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
            id                    = "input-parameter-oqnf8rxx"
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
                      value       = "SQS"
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
                      value       = "Queue"
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
              string = "Account"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "groupBy"
            name                  = "Group By"
            source                = "CustomData"
            sourceCustomData = [
              [
                "Account",
                "Account",
              ],
              [
                "Region",
                "Region",
              ],
              [
                "Message Retention Period",
                "MessageRetentionPeriod",
              ],
              [
                "Maximum Message Size",
                "MaximumMessageSize",
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
          millisFromCurrentTime = 86400000
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
  name = local.sqs_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.aws_asset_inventory
          }
        }
        id   = "input-parameter-oqnf8rxx"
        name = "AWS Asset Inventory"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
        }
      },
      {
        defaultValue = {
          string = "Account"
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
        id = "stage-vyy6zut2"
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
          label         = "Queues"
          managers = [
            {
              id         = "7tireaec"
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
                  singleStatLabel = "Queues"
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
              id            = "step-hsqmsqx6"
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
                            singleStatLabel = "Queues"
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
                          parameterId = "input-parameter-oqnf8rxx"
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
              id            = "step-n9ypn5uu"
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
            thumbnailId       = "6btgxxvi"
          }
        }
        params   = null
        pipeline = "timechart options(empty_bins:true), A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()"
      },
      {
        id = "stage-drc4l0l9"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/SQS/NumberOfMessagesSentsum_from_AWS-Quickstart/Metrics"
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
          index         = 1
          inputList     = []
          isInternal    = false
          label         = "Queues by Messages Sent"
          managers = [
            {
              id         = "361iycka"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  innerRadius = 0.6
                  legend = {
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "arc"
                }
                source = {
                  table = {
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_AWSSQSNumberOfMessagesSentsum_sum"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
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
                columnName = "A_AWSSQSNumberOfMessagesSentsum_sum"
              },
            ]
            wantBuckets = 1
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-xtqfisdm"
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
                            innerRadius = 0.6
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type = "arc"
                          }
                          source = {
                            table = {
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_AWSSQSNumberOfMessagesSentsum_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
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
                                QueueName = false
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
                                  parameterId = "input-parameter-oqnf8rxx"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 1
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
                        id             = "metricExpression-l7bqgdn0"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-18T19:23:00Z"
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
                                path   = "QueueName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/SQS/NumberOfMessagesSent.sum"
                          nameWithPath        = "AWS/SQS/NumberOfMessagesSent.sum (AWS-Quickstart/Metrics)"
                          rollup              = "sum"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = false
                        summaryMode            = "single"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSSQSNumberOfMessagesSentsum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-bnvdwqzy"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-l7bqgdn0",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-ktk6b4u0"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align options(bins: 1), A_AWSSQSNumberOfMessagesSentsum_sum:sum(m(\"AWS/SQS/NumberOfMessagesSent.sum\"))",
                "aggregate A_AWSSQSNumberOfMessagesSentsum_sum:sum(A_AWSSQSNumberOfMessagesSentsum_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "Builder"
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
            thumbnailId   = "0bzmxdjn"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align options(bins: 1), A_AWSSQSNumberOfMessagesSentsum_sum:sum(m("AWS/SQS/NumberOfMessagesSent.sum"))
                    aggregate A_AWSSQSNumberOfMessagesSentsum_sum:sum(A_AWSSQSNumberOfMessagesSentsum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-gq7q2d8q"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/SQS/NumberOfMessagesReceivedsum_from_AWS-Quickstart/Metrics"
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
          index         = 2
          inputList     = []
          isInternal    = false
          label         = "Queues by Messages Received"
          managers = [
            {
              id         = "51gjshvl"
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
                    placement = "right"
                    type      = "list"
                    visible   = true
                  }
                  type = "arc"
                }
                source = {
                  table = {
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "SINGLE"
                    }
                    transformType = "none"
                    type          = "keyvalue"
                    valueField    = "A_AWSSQSNumberOfMessagesReceivedsum_sum"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
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
                columnName = "A_AWSSQSNumberOfMessagesReceivedsum_sum"
              },
            ]
            wantBuckets = 1
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-l3xespn1"
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
                            colorMapping = [
                              {
                                color = ""
                                key   = ""
                              },
                            ]
                            innerRadius = 0.6
                            legend = {
                              placement = "right"
                              type      = "list"
                              visible   = true
                            }
                            type = "arc"
                          }
                          source = {
                            table = {
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "SINGLE"
                              }
                              transformType = "none"
                              type          = "keyvalue"
                              valueField    = "A_AWSSQSNumberOfMessagesReceivedsum_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "circular"
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
                                QueueName = false
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
                                  parameterId = "input-parameter-oqnf8rxx"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 1
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
                        id             = "metricExpression-l7bqgdn0"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-18T19:23:00Z"
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
                                path   = "QueueName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/SQS/NumberOfMessagesReceived.sum"
                          nameWithPath        = "AWS/SQS/NumberOfMessagesReceived.sum (AWS-Quickstart/Metrics)"
                          rollup              = "sum"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = false
                        summaryMode            = "single"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSSQSNumberOfMessagesReceivedsum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-bnvdwqzy"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-l7bqgdn0",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-3dyvn3wt"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align options(bins: 1), A_AWSSQSNumberOfMessagesReceivedsum_sum:sum(m(\"AWS/SQS/NumberOfMessagesReceived.sum\"))",
                "aggregate A_AWSSQSNumberOfMessagesReceivedsum_sum:sum(A_AWSSQSNumberOfMessagesReceivedsum_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "Builder"
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
            thumbnailId   = "2z6yd63s"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align options(bins: 1), A_AWSSQSNumberOfMessagesReceivedsum_sum:sum(m("AWS/SQS/NumberOfMessagesReceived.sum"))
                    aggregate A_AWSSQSNumberOfMessagesReceivedsum_sum:sum(A_AWSSQSNumberOfMessagesReceivedsum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-vvnpra3a"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/SQS/NumberOfMessagesReceivedsum_from_AWS-Quickstart/Metrics"
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
            columnVisibility = []
            columnWidths = [
              [
                "dimensions",
                474,
              ],
              [
                "ApproximateAgeOfOldestMessage",
                298,
              ],
              [
                "MessageRetentionPeriod",
                197,
              ],
              [
                "Configuration",
                484,
              ],
              [
                "MaximumMessageSize",
                222,
              ],
              [
                "Resource",
                416,
              ],
              [
                "Resource_",
                339,
              ],
            ]
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = []
            selection = {
              cells = {
                Configuration = {
                  "0" = true
                }
              }
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "cell"
            }
            tableWidth = 1867
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 3
          inputList = [
            {
              datasetId   = local.metrics
              id          = "query-input-upnydhax"
              inputName   = "AWS/SQS/NumberOfMessagesReceivedsum_from_AWS-Quickstart/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              id          = "query-input-ztwq41pn"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-oqnf8rxx"
            },
          ]
          isInternal = false
          label      = "Max Age of Oldest Message by Instance (Top 50)"
          managers = [
            {
              id         = "rgo0v0mo"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  cohort = "groupBy"
                  colorScaleConfig = {
                    bounds = {
                      end   = 5000
                      start = 1
                    }
                    colorScaleType         = "Sequential"
                    divergingColorScale    = "RdYlGn"
                    divergingScaleMidpoint = 0
                    sequentialColorScale   = "YlOrBr"
                  }
                  nodeColorConfigType = "Range"
                  nodeColorField      = "ApproximateAgeOfOldestMessage"
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
                  nodeInnerTextField = "ApproximateAgeOfOldestMessage"
                  nodeInnerTextUnit  = "seconds"
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
            rollup      = {}
            wantBuckets = 400
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS/SQS/NumberOfMessagesReceivedsum_from_AWS-Quickstart/Metrics"
              id            = "step-ectq0d9o"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-pihyblzi"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "",
                "align options(bins:1), ApproximateAgeOfOldestMessage:max(m(\"AWS/SQS/ApproximateAgeOfOldestMessage.max\"))",
                "aggregate ApproximateAgeOfOldestMessage:sum(ApproximateAgeOfOldestMessage), group_by(^Resource...)",
                "",
                "filter ApproximateAgeOfOldestMessage >= 1",
                "",
                "topk 50, sum(ApproximateAgeOfOldestMessage)",
                "lookup ^Resource, \"Configuration\": ^Resource.Configuration",
                "",
                "",
                "make_col ",
                "    MessageRetentionPeriod:duration_sec(Configuration.MessageRetentionPeriod),",
                "    MaximumMessageSize:string(Configuration.MaximumMessageSize) + \" bytes\"",
                "",
                "make_col groupBy: case(",
                "     $groupBy=\"MessageRetentionPeriod\",  string(MessageRetentionPeriod),",
                "     $groupBy=\"MaximumMessageSize\", MaximumMessageSize,",
                "     $groupBy=\"Account\", account_id, ",
                "     $groupBy=\"Region\", region, ",
                "     true, label(^Resource)",
                "    )",
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
            stageOutputHeight = 38.735632183908045
            stageTab          = "vis"
            thumbnailId       = "6uv7x0mj"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    
                    align options(bins:1), ApproximateAgeOfOldestMessage:max(m("AWS/SQS/ApproximateAgeOfOldestMessage.max"))
                    aggregate ApproximateAgeOfOldestMessage:sum(ApproximateAgeOfOldestMessage), group_by(^Resource...)
                    
                    filter ApproximateAgeOfOldestMessage >= 1
                    
                    topk 50, sum(ApproximateAgeOfOldestMessage)
                    lookup ^Resource, "Configuration": ^Resource.Configuration
                    
                    
                    make_col 
                        MessageRetentionPeriod:duration_sec(Configuration.MessageRetentionPeriod),
                        MaximumMessageSize:string(Configuration.MaximumMessageSize) + " bytes"
                    
                    make_col groupBy: case(
                         $groupBy="MessageRetentionPeriod",  string(MessageRetentionPeriod),
                         $groupBy="MaximumMessageSize", MaximumMessageSize,
                         $groupBy="Account", account_id, 
                         $groupBy="Region", region, 
                         true, label(^Resource)
                        )
                EOT
      },
      {
        id = "stage-calkwa27"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/SQS/NumberOfMessagesReceivedsum_from_AWS-Quickstart/Metrics"
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
            columnVisibility = []
            columnWidths = [
              [
                "dimensions",
                474,
              ],
              [
                "ApproximateAgeOfOldestMessage",
                225,
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
            tableWidth = 574
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 4
          inputList = [
            {
              datasetId   = local.metrics
              id          = "query-input-upnydhax"
              inputName   = "AWS/SQS/NumberOfMessagesReceivedsum_from_AWS-Quickstart/Metrics"
              inputRole   = "Data"
              isUserInput = false
            },
            {
              id          = "query-input-ztwq41pn"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-oqnf8rxx"
            },
          ]
          isInternal = false
          label      = "Sent Message Size"
          managers   = []
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            rollup = {}
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS/SQS/NumberOfMessagesReceivedsum_from_AWS-Quickstart/Metrics"
              id            = "step-auz08qxs"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-ia3t2nj3"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "",
                "align options(bins:1), SentMessageSize:avg(m(\"AWS/SQS/SentMessageSize.sum\"))",
                "// aggregate SentMessageSize:sum(SentMessageSize), group_by(^Resource...)",
                "",
                "// filter SentMessageSize >= 1",
                "",
                "// topk 25, sum(SentMessageSize)",
                "// lookup ^Resource, \"Configuration\": ^Resource.Configuration",
                "",
                "",
                "// make_col",
                "//     Architecture: string(Configuration.architectures[0]),",
                "//     State: string(Configuration.state),",
                "//     RunTime: string(Configuration.runtime),",
                "//     MemorySize: string(Configuration.memorySize),",
                "//     StorageSize: string(Configuration.ephemeralStorage.size),",
                "//     FunctionName: string(Configuration.functionName)",
                "",
                "// make_col groupBy: case(",
                "//      $groupBy=\"Architecture\", Architecture,",
                "//      $groupBy=\"State\", State,",
                "//      $groupBy=\"RunTime\", RunTime,    ",
                "//      $groupBy=\"MemorySize\", MemorySize, ",
                "//      $groupBy=\"StorageSize\", StorageSize, ",
                "//      $groupBy=\"FunctionName\", FunctionName,",
                "//      true, Architecture",
                "//     )",
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
            stageOutputHeight = 53.45005149330587
            stageTab          = "table"
            thumbnailId       = "vbh46jmu"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    
                    align options(bins:1), SentMessageSize:avg(m("AWS/SQS/SentMessageSize.sum"))
                    // aggregate SentMessageSize:sum(SentMessageSize), group_by(^Resource...)
                    
                    // filter SentMessageSize >= 1
                    
                    // topk 25, sum(SentMessageSize)
                    // lookup ^Resource, "Configuration": ^Resource.Configuration
                    
                    
                    // make_col
                    //     Architecture: string(Configuration.architectures[0]),
                    //     State: string(Configuration.state),
                    //     RunTime: string(Configuration.runtime),
                    //     MemorySize: string(Configuration.memorySize),
                    //     StorageSize: string(Configuration.ephemeralStorage.size),
                    //     FunctionName: string(Configuration.functionName)
                    
                    // make_col groupBy: case(
                    //      $groupBy="Architecture", Architecture,
                    //      $groupBy="State", State,
                    //      $groupBy="RunTime", RunTime,    
                    //      $groupBy="MemorySize", MemorySize, 
                    //      $groupBy="StorageSize", StorageSize, 
                    //      $groupBy="FunctionName", FunctionName,
                    //      true, Architecture
                    //     )
                EOT
      },
      {
        id = "stage-z82tspqu"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/SQS/NumberOfMessagesSentsum_from_AWS-Quickstart/Metrics"
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
          label         = "Number of Messages Sent"
          managers = [
            {
              id         = "ozgxk06z"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  annotations   = []
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
                    type      = "list"
                    visible   = true
                  }
                  thresholds = {
                    startingColor = "Default"
                    thresholds    = []
                    visible       = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    axisLabel = "Count"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSSQSNumberOfMessagesSentsum_sum"
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
                columnName = "A_AWSSQSNumberOfMessagesSentsum_sum"
              },
            ]
            wantBuckets = 250
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-msy1al49"
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
                            annotations   = []
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "bottom"
                              type      = "list"
                              visible   = true
                            }
                            thresholds = {
                              startingColor = "Default"
                              thresholds    = []
                              visible       = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              axisLabel = "Count"
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSSQSNumberOfMessagesSentsum_sum"
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
                                QueueName = false
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
                                  parameterId = "input-parameter-oqnf8rxx"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 1
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
                        id             = "metricExpression-l7bqgdn0"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-18T19:23:00Z"
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
                                path   = "QueueName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/SQS/NumberOfMessagesSent.sum"
                          nameWithPath        = "AWS/SQS/NumberOfMessagesSent.sum (AWS-Quickstart/Metrics)"
                          rollup              = "sum"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSSQSNumberOfMessagesSentsum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-bnvdwqzy"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-l7bqgdn0",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-lfkedtik"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSSQSNumberOfMessagesSentsum_sum:sum(m(\"AWS/SQS/NumberOfMessagesSent.sum\"))",
                "aggregate A_AWSSQSNumberOfMessagesSentsum_sum:sum(A_AWSSQSNumberOfMessagesSentsum_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "Builder"
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
            thumbnailId   = "t8gdh9r2"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSSQSNumberOfMessagesSentsum_sum:sum(m("AWS/SQS/NumberOfMessagesSent.sum"))
                    aggregate A_AWSSQSNumberOfMessagesSentsum_sum:sum(A_AWSSQSNumberOfMessagesSentsum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-yk8ci7ll"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/SQS/ApproximateAgeOfOldestMessagesum_from_AWS-Quickstart/Metrics"
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
          label         = "Approximate Age of Oldest Message"
          managers = [
            {
              id         = "67kzhkna"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  annotations   = []
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
                    type      = "list"
                    visible   = true
                  }
                  thresholds = {
                    startingColor = "Default"
                    thresholds    = []
                    visible       = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    axisLabel = ""
                    unit      = "s"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSSQSApproximateAgeOfOldestMessagesum_sum"
                  }
                  topK = {
                    k     = 100
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
                columnName = "A_AWSSQSNumberOfMessagesSentsum_sum"
              },
            ]
            wantBuckets = 250
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-20qfbodw"
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
                        autoFrame = true
                        dataVis = {
                          config = {
                            annotations   = []
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "bottom"
                              type      = "list"
                              visible   = true
                            }
                            thresholds = {
                              startingColor = "Default"
                              thresholds    = []
                              visible       = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              axisLabel = ""
                              unit      = "s"
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSSQSApproximateAgeOfOldestMessagesum_sum"
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
                                QueueName = false
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
                                  parameterId = "input-parameter-oqnf8rxx"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 1
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
                        id             = "metricExpression-l7bqgdn0"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-18T23:51:00Z"
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
                                path   = "QueueName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/SQS/ApproximateAgeOfOldestMessage.sum"
                          nameWithPath        = "AWS/SQS/ApproximateAgeOfOldestMessage.sum (AWS-Quickstart/Metrics)"
                          rollup              = "max"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = "s"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSSQSApproximateAgeOfOldestMessagesum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-bnvdwqzy"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-l7bqgdn0",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-prvqgx6u"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSSQSApproximateAgeOfOldestMessagesum_sum:max(m(\"AWS/SQS/ApproximateAgeOfOldestMessage.sum\"))",
                "aggregate A_AWSSQSApproximateAgeOfOldestMessagesum_sum:sum(A_AWSSQSApproximateAgeOfOldestMessagesum_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "Builder"
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
            thumbnailId   = "k0as7qd4"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSSQSApproximateAgeOfOldestMessagesum_sum:max(m("AWS/SQS/ApproximateAgeOfOldestMessage.sum"))
                    aggregate A_AWSSQSApproximateAgeOfOldestMessagesum_sum:sum(A_AWSSQSApproximateAgeOfOldestMessagesum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-bfrw9s43"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/SQS/SentMessageSizesum_from_AWS-Quickstart/Metrics"
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
          label         = "Sent Message Size"
          managers = [
            {
              id         = "6wktq8mh"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  annotations   = []
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
                    type      = "list"
                    visible   = true
                  }
                  thresholds = {
                    startingColor = "Default"
                    thresholds    = []
                    visible       = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  table = {
                    statsBy = {
                      fn = "avg"
                    }
                    timechart = {
                      fn         = "avg"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSSQSSentMessageSizesum_sum"
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
                columnName = "A_AWSSQSNumberOfMessagesSentsum_sum"
              },
            ]
            wantBuckets = 250
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-2qsbsvfw"
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
                        autoFrame = true
                        dataVis = {
                          config = {
                            annotations   = []
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "bottom"
                              type      = "list"
                              visible   = true
                            }
                            thresholds = {
                              startingColor = "Default"
                              thresholds    = []
                              visible       = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              unit    = "bytes"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              statsBy = {
                                fn = "avg"
                              }
                              timechart = {
                                fn         = "avg"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSSQSSentMessageSizesum_sum"
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
                                QueueName = false
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
                                  parameterId = "input-parameter-oqnf8rxx"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 5
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
                        id             = "metricExpression-l7bqgdn0"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-18T23:39:00Z"
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
                                path   = "QueueName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/SQS/SentMessageSize.sum"
                          nameWithPath        = "AWS/SQS/SentMessageSize.sum (AWS-Quickstart/Metrics)"
                          rollup              = "sum"
                          state               = "Active"
                          suggestedBucketSize = "120000000000"
                          type                = "gauge"
                          unit                = "By"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSSQSSentMessageSizesum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-bnvdwqzy"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-l7bqgdn0",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-cvevg0v6"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSSQSSentMessageSizesum_sum:sum(m(\"AWS/SQS/SentMessageSize.sum\"))",
                "aggregate A_AWSSQSSentMessageSizesum_sum:sum(A_AWSSQSSentMessageSizesum_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "Builder"
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
            thumbnailId   = "wti86r69"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSSQSSentMessageSizesum_sum:sum(m("AWS/SQS/SentMessageSize.sum"))
                    aggregate A_AWSSQSSentMessageSizesum_sum:sum(A_AWSSQSSentMessageSizesum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-txhxj2kv"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/SQS/NumberOfMessagesDeletedsum_from_AWS-Quickstart/Metrics"
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
          index         = 8
          inputList     = []
          isInternal    = false
          label         = "Number of Messages Deleted"
          managers = [
            {
              id         = "61j1a4fr"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  annotations   = []
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
                    type      = "list"
                    visible   = true
                  }
                  thresholds = {
                    startingColor = "Default"
                    thresholds    = []
                    visible       = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    axisLabel = "Count"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSSQSNumberOfMessagesDeletedsum_sum"
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
                columnName = "A_AWSSQSNumberOfMessagesSentsum_sum"
              },
            ]
            wantBuckets = 250
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-qjnqbwtn"
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
                            annotations   = []
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "bottom"
                              type      = "list"
                              visible   = true
                            }
                            thresholds = {
                              startingColor = "Default"
                              thresholds    = []
                              visible       = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              axisLabel = "Count"
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSSQSNumberOfMessagesDeletedsum_sum"
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
                                QueueName = false
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
                                  parameterId = "input-parameter-oqnf8rxx"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 1
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
                        id             = "metricExpression-l7bqgdn0"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-18T21:57:00Z"
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
                                path   = "QueueName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/SQS/NumberOfMessagesDeleted.sum"
                          nameWithPath        = "AWS/SQS/NumberOfMessagesDeleted.sum (AWS-Quickstart/Metrics)"
                          rollup              = "sum"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSSQSNumberOfMessagesDeletedsum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-bnvdwqzy"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-l7bqgdn0",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-carpvblw"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSSQSNumberOfMessagesDeletedsum_sum:sum(m(\"AWS/SQS/NumberOfMessagesDeleted.sum\"))",
                "aggregate A_AWSSQSNumberOfMessagesDeletedsum_sum:sum(A_AWSSQSNumberOfMessagesDeletedsum_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "Builder"
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
            thumbnailId   = "bnigqhdb"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSSQSNumberOfMessagesDeletedsum_sum:sum(m("AWS/SQS/NumberOfMessagesDeleted.sum"))
                    aggregate A_AWSSQSNumberOfMessagesDeletedsum_sum:sum(A_AWSSQSNumberOfMessagesDeletedsum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-wwsekg1r"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/SQS/ApproximateNumberOfMessagesDelayedsum_from_AWS-Quickstart/Metrics"
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
          index         = 9
          inputList     = []
          isInternal    = false
          label         = "Approximate Number of Messages Delayed"
          managers = [
            {
              id         = "9vq3onks"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  annotations   = []
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
                    type      = "list"
                    visible   = true
                  }
                  thresholds = {
                    startingColor = "Default"
                    thresholds    = []
                    visible       = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    axisLabel = "Count"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSSQSApproximateNumberOfMessagesDelayedsum_sum"
                  }
                  topK = {
                    k     = 100
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
                columnName = "A_AWSSQSNumberOfMessagesSentsum_sum"
              },
            ]
            wantBuckets = 250
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-um1yyloj"
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
                            annotations   = []
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "bottom"
                              type      = "list"
                              visible   = true
                            }
                            thresholds = {
                              startingColor = "Default"
                              thresholds    = []
                              visible       = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              axisLabel = "Count"
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSSQSApproximateNumberOfMessagesDelayedsum_sum"
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
                                QueueName = false
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
                                  parameterId = "input-parameter-oqnf8rxx"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 1
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
                        id             = "metricExpression-l7bqgdn0"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-18T23:51:00Z"
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
                                path   = "QueueName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/SQS/ApproximateNumberOfMessagesDelayed.sum"
                          nameWithPath        = "AWS/SQS/ApproximateNumberOfMessagesDelayed.sum (AWS-Quickstart/Metrics)"
                          rollup              = "avg"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSSQSApproximateNumberOfMessagesDelayedsum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-bnvdwqzy"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-l7bqgdn0",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-5xyjf0rq"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSSQSApproximateNumberOfMessagesDelayedsum_sum:avg(m(\"AWS/SQS/ApproximateNumberOfMessagesDelayed.sum\"))",
                "aggregate A_AWSSQSApproximateNumberOfMessagesDelayedsum_sum:sum(A_AWSSQSApproximateNumberOfMessagesDelayedsum_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "Builder"
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
            thumbnailId   = "bb7uv1cc"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSSQSApproximateNumberOfMessagesDelayedsum_sum:avg(m("AWS/SQS/ApproximateNumberOfMessagesDelayed.sum"))
                    aggregate A_AWSSQSApproximateNumberOfMessagesDelayedsum_sum:sum(A_AWSSQSApproximateNumberOfMessagesDelayedsum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-dcwhlhvy"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/SQS/NumberOfMessagesReceivedsum_from_AWS-Quickstart/Metrics"
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
          index         = 10
          inputList     = []
          isInternal    = false
          label         = "Number of Messages Received"
          managers = [
            {
              id         = "0usikvlh"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  annotations   = []
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    placement = "bottom"
                    type      = "list"
                    visible   = true
                  }
                  thresholds = {
                    startingColor = "Default"
                    thresholds    = []
                    visible       = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    axisLabel = "Count"
                    visible   = true
                  }
                }
                source = {
                  table = {
                    statsBy = {
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSSQSNumberOfMessagesReceivedsum_sum"
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
                columnName = "A_AWSSQSNumberOfMessagesSentsum_sum"
              },
            ]
            wantBuckets = 250
          }
          renderType   = "TABLE"
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-8wh0cgyb"
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
                            annotations   = []
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              placement = "bottom"
                              type      = "list"
                              visible   = true
                            }
                            thresholds = {
                              startingColor = "Default"
                              thresholds    = []
                              visible       = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              axisLabel = "Count"
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              statsBy = {
                                fn = "count"
                              }
                              timechart = {
                                fn         = "count"
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSSQSNumberOfMessagesReceivedsum_sum"
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
                                QueueName = false
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
                                  parameterId = "input-parameter-oqnf8rxx"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 1
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
                        id             = "metricExpression-l7bqgdn0"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-18T19:23:00Z"
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
                                path   = "QueueName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/SQS/NumberOfMessagesReceived.sum"
                          nameWithPath        = "AWS/SQS/NumberOfMessagesReceived.sum (AWS-Quickstart/Metrics)"
                          rollup              = "sum"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSSQSNumberOfMessagesReceivedsum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-bnvdwqzy"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-l7bqgdn0",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-ull7vav1"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSSQSNumberOfMessagesReceivedsum_sum:sum(m(\"AWS/SQS/NumberOfMessagesReceived.sum\"))",
                "aggregate A_AWSSQSNumberOfMessagesReceivedsum_sum:sum(A_AWSSQSNumberOfMessagesReceivedsum_sum), group_by(^Resource...)",
              ]
              type = "unknown"
            },
          ]
          type = "table"
          viewModel = {
            builderOpalTab       = "Builder"
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
            thumbnailId   = "kiffafbn"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.QueueName) or dimensions.QueueName = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSSQSNumberOfMessagesReceivedsum_sum:sum(m("AWS/SQS/NumberOfMessagesReceived.sum"))
                    aggregate A_AWSSQSNumberOfMessagesReceivedsum_sum:sum(A_AWSSQSNumberOfMessagesReceivedsum_sum), group_by(^Resource...)
                EOT
      },
    ]
  )
  workspace = local.workspace
}

