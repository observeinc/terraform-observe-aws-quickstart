resource "observe_dashboard" "home" {
  workspace   = local.workspace
  name        = local.home_dashboard_name
  description = "Home Dashboard"
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
                  stageId  = "stage-k9no8yxu"
                }
                layout = {
                  h = 18
                  w = 8
                  x = 4
                  y = 0
                }
              },
              {
                card = {
                  cardType       = "image"
                  resizeBehavior = "contain"
                  title          = "Untitled Image"
                  url            = "https://assets.observeinc.com/icons/apps/terraform-observe-aws/aws-logo-dark.png"
                }
                layout = {
                  h = 18
                  w = 4
                  x = 0
                  y = 0
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-sefl96qa"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 0
                  y = 18
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-ojrm18v1"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 8
                  y = 18
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-swkapwx3"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 4
                  y = 18
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-3ydx5fyq"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 0
                  y = 30
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-5peq7q1r"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 8
                  y = 30
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-ednorf95"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 4
                  y = 30
                }
              },
              {
                card = {
                  cardType = "text"
                  text     = <<-EOT
                                        ### EC2 Instances
                                                                                                                                                                
                                        For more EC2 Instance related metrics, navigate to the 
                                         [Metric Explorer](/workspace/${var.workspace.id}/metric-explorer?search=AWS/EC2)
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 6
                  w = 4
                  x = 0
                  y = 42
                }
              },
              {
                card = {
                  cardType = "text"
                  text     = <<-EOT
                                        ### Lambda Functions
                                                                                                                                                                
                                        For more Lambda Function related metrics, navigate to the 
                                         [Metric Explorer](/workspace/${var.workspace.id}/metric-explorer?search=AWS/Lambda)
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 6
                  w = 4
                  x = 8
                  y = 42
                }
              },
              {
                card = {
                  cardType = "text"
                  text     = <<-EOT
                                        ### Elastic Load Balancers
                                                                                                                                                                
                                        For more Elastic Load Balancing related metrics, navigate to the [Metric Explorer](/workspace/${var.workspace.id}/metric-explorer?search=AWS/ApplicationELB)
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 6
                  w = 4
                  x = 4
                  y = 42
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-53541vr3"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 0
                  y = 48
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-tkgqs54i"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 8
                  y = 48
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-6k4ohk3i"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 4
                  y = 48
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-epfgx30d"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 0
                  y = 60
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-gxi83vt0"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 8
                  y = 60
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-z1s4bcbb"
                }
                layout = {
                  h = 12
                  w = 4
                  x = 4
                  y = 60
                }
              },
              {
                card = {
                  cardType = "text"
                  text     = <<-EOT
                                        ### Resources & Logs
                                        - Use filters to focus on resources of interest.
                                        - To view metrics for a resource, highlight a resource row using the checkbox, and select the `Metrics` tab in the sliding rail on the right hand side.
                                        - If the resource has logs being shipped to Observe, they should appear in the table below.
                                        - To inspect `Properties` for a resource or any structured column, double click on the table cell to view a formatted version and perform operations such as extracting fields.
                                                                                                                                                                                                        
                                        Discover more about Resources from the [dataset page](/workspace/${var.workspace.id}/dataset/resource/${local.resources})
                                                                                                                                                                                                        
                                        Discover more about Logs from the [Log Explorer](/workspace/${var.workspace.id}/log-explorer?datasetId=${local.logs})
                                    EOT
                  title    = "Untitled Text"
                }
                layout = {
                  h = 16
                  w = 3
                  x = 0
                  y = 72
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-ned8ibcl"
                }
                layout = {
                  h = 16
                  w = 9
                  x = 3
                  y = 72
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-r358zq9i"
                }
                layout = {
                  h = 14
                  w = 12
                  x = 0
                  y = 88
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
            autoApply               = true
            controlledFilterStageId = "stage-z3k16jr6"
            datasetId               = local.resources
            defaultValue = {
              datasetref = {
                datasetId = local.resources
              }
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "input-parameter-xmyuiu01"
            name                  = "AWS Asset Inventory"
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
        ]
        timeRange = {
          display               = "Past 4 hours"
          endTime               = null
          millisFromCurrentTime = 14400000
          originalDisplay       = "Past 4 hours"
          startTime             = null
          timeRangeInfo = {
            key        = "PRESETS"
            name       = "Presets"
            presetType = "PAST_4_HOURS"
          }
        }
      }
    }
  )
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.resources
          }
        }
        id   = "input-parameter-xmyuiu01"
        name = "AWS Asset Inventory"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
        }
      },
    ]
  )
  stages = jsonencode(
    [
      {
        id = "stage-k9no8yxu"
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
            tableWidth = 3020
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 0
          inputList = [
            {
              id          = "query-input-p6vj1v1e"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-xmyuiu01"
            },
          ]
          isInternal = false
          label      = "Resources by Account"
          managers = [
            {
              id         = "vk8gz6pn"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  areaFillType = "SolidFill"
                  colorMapping = [
                    {
                      color = ""
                      key   = ""
                    },
                  ]
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  thresholds = {
                    startingColor = "Default"
                    thresholds    = []
                    visible       = false
                  }
                  type                = "bar"
                  xAxisLabelPlacement = "horizontal"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
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
                      fnArgs     = null
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "AccountID"
                    y             = "count"
                  }
                  type = "table"
                }
                type = "bar"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
              "ResultKindData",
              "ResultKindVolumeStats",
              "ResultKindColumnStats",
              "ResultKindProgress",
            ]
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_Resources_count_distinct_exact"
              },
            ]
            wantBuckets = 30
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS Asset Inventory"
              id            = "step-0ynxgsgu"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-peweh7kq"
              index         = 1
              isPinned      = false
              opal = [
                "filter not is_null(AccountID)",
                "make_table",
                "make_col AccountID:if(AccountID=\"\", \"Global\", AccountID)",
                "statsby count(), group_by(AccountID)",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,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"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter not is_null(AccountID)
                    make_table
                    make_col AccountID:if(AccountID="", "Global", AccountID)
                    statsby count(), group_by(AccountID)
                EOT
      },
      {
        id = "stage-epfgx30d"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/EC2/EBSReadBytessum_from_AWS-Quickstart/Metrics"
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
          label         = "EBS Read/Write Bytes"
          managers = [
            {
              id         = "ruupuoqe"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    logScale = {
                      use = true
                    }
                    unit    = "bytes"
                    visible = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSEC2EBSReadBytessum_sum"
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
            wantBuckets = 150
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-xund448r"
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
                              visible = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              logScale = {
                                use = true
                              }
                              unit    = "bytes"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSEC2EBSReadBytessum_sum"
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
                                targetDataset    = local.resources
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                "input-parameter-xmyuiu01",
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                          {
                            params = {
                              checkedKeys          = []
                              columnId             = "dimensions"
                              columnType           = "object"
                              differentPathsUseAnd = true
                              expandedKeys         = []
                              filterVerb           = "filter"
                              paths = {
                                InstanceId = false
                              }
                              valuesForPath = {}
                            }
                            summary = null
                            type    = "FilterJSONKey"
                          },
                        ]
                        frameDuration = {
                          num  = 5
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            id   = "dimensions"
                            path = "InstanceId"
                          },
                        ]
                        id             = "metricExpression-yujytl8a"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-03-27T21:10:00Z"
                            tags = [
                              {
                                column = "resourceId"
                                path   = ""
                              },
                              {
                                column = "service"
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
                                column = "unit"
                                path   = ""
                              },
                              {
                                column = "dimensions"
                                path   = "InstanceId"
                              },
                              {
                                column = "dimensions"
                                path   = "AutoScalingGroupName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/EC2/EBSReadBytes.sum"
                          nameWithPath        = "AWS/EC2/EBSReadBytes.sum (AWS-Quickstart/Metrics)"
                          rollup              = "rate"
                          state               = "Active"
                          suggestedBucketSize = "300000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_AWSEC2EBSReadBytessum_sum"
                        viewTab        = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-chusyh0h"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-yujytl8a",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-l43bmoi1"
              index         = 1
              isPinned      = false
              opal = [
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json(\"null\")))",
                "align A_AWSEC2EBSReadBytessum_sum:rate(m(\"AWS/EC2/EBSReadBytes.sum\"))",
                "aggregate A_AWSEC2EBSReadBytessum_sum:sum(A_AWSEC2EBSReadBytessum_sum), group_by(string(dimensions.InstanceId))",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,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"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json("null")))
                    align A_AWSEC2EBSReadBytessum_sum:rate(m("AWS/EC2/EBSReadBytes.sum"))
                    aggregate A_AWSEC2EBSReadBytessum_sum:sum(A_AWSEC2EBSReadBytessum_sum), group_by(string(dimensions.InstanceId))
                EOT
      },
      {
        id = "stage-6k4ohk3i"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/ApplicationELB/ActiveConnectionCountsum_from_AWS-Quickstart/Metrics"
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
          label         = "Active Connections"
          managers = [
            {
              id         = "1cc59eur"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  areaFillType = "SolidFill"
                  colorMapping = [
                    {
                      color = ""
                      key   = ""
                    },
                  ]
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  thresholds = {
                    startingColor = "Default"
                    thresholds    = []
                    visible       = false
                  }
                  type                = "bar"
                  xAxisLabelPlacement = "horizontal"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    logScale = {
                      use = true
                    }
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
                      fnArgs     = null
                      resolution = "AUTO"
                    }
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSApplicationELBActiveConnectionCountsum_sum"
                  }
                  topK = {
                    order = "Top"
                    type  = "Auto"
                  }
                  type = "table"
                }
                type = "bar"
              }
            },
          ]
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            rollup      = {}
            wantBuckets = 10
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-ek6vvdx0"
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
                            areaFillType = "SolidFill"
                            colorMapping = [
                              {
                                color = ""
                                key   = ""
                              },
                            ]
                            legend = {
                              type    = "list"
                              visible = false
                            }
                            thresholds = {
                              startingColor = "Default"
                              thresholds    = []
                              visible       = false
                            }
                            type                = "bar"
                            xAxisLabelPlacement = "horizontal"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              logScale = {
                                use = true
                              }
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
                                fnArgs     = null
                                resolution = "AUTO"
                              }
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSApplicationELBActiveConnectionCountsum_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "bar"
                        }
                        expressionIdentifier = "A"
                        filterActions = [
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
                                targetDataset    = local.resources
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                "input-parameter-xmyuiu01",
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                          {
                            params = {
                              checkedKeys          = []
                              columnId             = "dimensions"
                              columnType           = "object"
                              differentPathsUseAnd = true
                              expandedKeys         = []
                              filterVerb           = "filter"
                              paths = {
                                AvailabilityZone = true
                              }
                              valuesForPath = {}
                            }
                            summary = null
                            type    = "FilterJSONKey"
                          },
                        ]
                        frameDuration = {
                          num  = 5
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            id   = "dimensions"
                            path = "LoadBalancer"
                          },
                        ]
                        id             = "metricExpression-213jepes"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-03-27T21:23:00Z"
                            tags = [
                              {
                                column = "account_id"
                                path   = ""
                              },
                              {
                                column = "region"
                                path   = ""
                              },
                              {
                                column = "resourceId"
                                path   = ""
                              },
                              {
                                column = "service"
                                path   = ""
                              },
                              {
                                column = "unit"
                                path   = ""
                              },
                              {
                                column = "dimensions"
                                path   = "AvailabilityZone"
                              },
                              {
                                column = "dimensions"
                                path   = "LoadBalancer"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/ApplicationELB/ActiveConnectionCount.sum"
                          nameWithPath        = "AWS/ApplicationELB/ActiveConnectionCount.sum (AWS-Quickstart/Metrics)"
                          rollup              = "sum"
                          state               = "Active"
                          suggestedBucketSize = "300000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_AWSApplicationELBActiveConnectionCountsum_sum"
                        viewTab        = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-zklweft2"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-213jepes",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-aud4zjte"
              index         = 1
              isPinned      = false
              opal = [
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "filter ((is_null(dimensions.AvailabilityZone) or dimensions.AvailabilityZone = parse_json(\"null\")))",
                "align A_AWSApplicationELBActiveConnectionCountsum_sum:sum(m(\"AWS/ApplicationELB/ActiveConnectionCount.sum\"))",
                "aggregate A_AWSApplicationELBActiveConnectionCountsum_sum:sum(A_AWSApplicationELBActiveConnectionCountsum_sum), group_by(string(dimensions.LoadBalancer))",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,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"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    filter ((is_null(dimensions.AvailabilityZone) or dimensions.AvailabilityZone = parse_json("null")))
                    align A_AWSApplicationELBActiveConnectionCountsum_sum:sum(m("AWS/ApplicationELB/ActiveConnectionCount.sum"))
                    aggregate A_AWSApplicationELBActiveConnectionCountsum_sum:sum(A_AWSApplicationELBActiveConnectionCountsum_sum), group_by(string(dimensions.LoadBalancer))
                EOT
      },
      {
        id = "stage-z1s4bcbb"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/ApplicationELB/RequestCountsum_from_AWS-Quickstart/Metrics"
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
          index         = 3
          inputList     = []
          isInternal    = false
          label         = "Requests"
          managers = [
            {
              id         = "1idjcltu"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
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
                    logScale = {
                      use = true
                    }
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
                    y             = "A_AWSApplicationELBRequestCountsum_sum"
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
            wantBuckets = 150
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-haaefsim"
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
                              visible = false
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
                              logScale = {
                                use = true
                              }
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
                              y             = "A_AWSApplicationELBRequestCountsum_sum"
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
                                targetDataset    = local.resources
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                "input-parameter-xmyuiu01",
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                          {
                            params = {
                              checkedKeys          = []
                              columnId             = "dimensions"
                              columnType           = "object"
                              differentPathsUseAnd = true
                              expandedKeys         = []
                              filterVerb           = "filter"
                              paths = {
                                AvailabilityZone = true
                              }
                              valuesForPath = {}
                            }
                            summary = null
                            type    = "FilterJSONKey"
                          },
                        ]
                        frameDuration = {
                          num  = 1
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            id   = "dimensions"
                            path = "LoadBalancer"
                          },
                        ]
                        id             = "metricExpression-qwzdfdl4"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-03-27T21:24:00Z"
                            tags = [
                              {
                                column = "account_id"
                                path   = ""
                              },
                              {
                                column = "region"
                                path   = ""
                              },
                              {
                                column = "resourceId"
                                path   = ""
                              },
                              {
                                column = "service"
                                path   = ""
                              },
                              {
                                column = "unit"
                                path   = ""
                              },
                              {
                                column = "dimensions"
                                path   = "AvailabilityZone"
                              },
                              {
                                column = "dimensions"
                                path   = "LoadBalancer"
                              },
                              {
                                column = "dimensions"
                                path   = "TargetGroup"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/ApplicationELB/RequestCount.sum"
                          nameWithPath        = "AWS/ApplicationELB/RequestCount.sum (AWS-Quickstart/Metrics)"
                          rollup              = "sum"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_AWSApplicationELBRequestCountsum_sum"
                        viewTab        = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-vplhsai3"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-qwzdfdl4",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-f19nrxru"
              index         = 1
              isPinned      = false
              opal = [
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "filter ((is_null(dimensions.AvailabilityZone) or dimensions.AvailabilityZone = parse_json(\"null\")))",
                "align A_AWSApplicationELBRequestCountsum_sum:sum(m(\"AWS/ApplicationELB/RequestCount.sum\"))",
                "aggregate A_AWSApplicationELBRequestCountsum_sum:sum(A_AWSApplicationELBRequestCountsum_sum), group_by(string(dimensions.LoadBalancer))",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,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"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    filter ((is_null(dimensions.AvailabilityZone) or dimensions.AvailabilityZone = parse_json("null")))
                    align A_AWSApplicationELBRequestCountsum_sum:sum(m("AWS/ApplicationELB/RequestCount.sum"))
                    aggregate A_AWSApplicationELBRequestCountsum_sum:sum(A_AWSApplicationELBRequestCountsum_sum), group_by(string(dimensions.LoadBalancer))
                EOT
      },
      {
        id = "stage-tkgqs54i"
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
            tableWidth = 3020
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 4
          inputList     = []
          isInternal    = false
          label         = "Invocations"
          managers = [
            {
              id         = "vqrkqx2q"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    logScale = {
                      use = true
                    }
                    unit    = ""
                    visible = true
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
            wantBuckets = 150
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-9dwcn6vc"
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
                              visible = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              logScale = {
                                use = true
                              }
                              unit    = ""
                              visible = true
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
                                FunctionName = false
                                Resource     = true
                              }
                              valuesForPath = {}
                            }
                            summary = null
                            type    = "FilterJSONKey"
                          },
                          {
                            params = {
                              columnId   = "Resource"
                              columnType = "link"
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
                                targetDataset    = local.resources
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                "input-parameter-xmyuiu01",
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
                            id   = "dimensions"
                            path = "FunctionName"
                          },
                        ]
                        id             = "metricExpression-6uyssy3e"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-03-27T21:29:00Z"
                            tags = [
                              {
                                column = "account_id"
                                path   = ""
                              },
                              {
                                column = "region"
                                path   = ""
                              },
                              {
                                column = "resourceId"
                                path   = ""
                              },
                              {
                                column = "service"
                                path   = ""
                              },
                              {
                                column = "unit"
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
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_AWSLambdaInvocationssum_sum"
                        viewTab        = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-rnx08hum"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-6uyssy3e",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-88y010e6"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.FunctionName) or dimensions.FunctionName = parse_json(\"null\")) and (is_null(dimensions.Resource) or dimensions.Resource = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSLambdaInvocationssum_sum:sum(m(\"AWS/Lambda/Invocations.sum\"))",
                "aggregate A_AWSLambdaInvocationssum_sum:sum(A_AWSLambdaInvocationssum_sum), group_by(string(dimensions.FunctionName))",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAasAAADwCAYAAAC+L0vtAAAAAXNSR0IArs4c6QAAIABJREFUeF7tfXmcVNWV/6vqHZDFIJuIuAAqYCK44aDdTKKGRJ35TSSZjOMvi5pRUbOQRWcm6e7k9/toFjTRqBnjNqOZmcQk84syGscx3SiRqKATISrgvrCJQrNI00vVz/PqnepTt+5y3tLtK+rwD1D13n3nfs/yPefce19lPPkjCAgCgoAgIAikHIFMyuUT8QQBQUAQEAQEAU/ISoxAEBAEBAFBIPUICFmlXkUioCAgCAgCgoCQldiAICAICAKCQOoRELJKvYpEQEFAEBAEBAEhK7EBQUAQEAQEgdQjIGSVehWJgIKAICAICAJCVmIDgoAgIAgIAqlHQMgq9SoSAQUBQUAQEASErMQGBAFBQBAQBFKPgJBV6lUkAgoCgoAgIAgIWYkNCAKCgCAgCKQeASGr1KtIBBQEBAFBQBAQshIbEAQEAUFAEEg9AkJWqVeRCCgICAKCgCAgZCU2IAgIAoKAIJB6BISsUq8iEVAQEAQEAUFAyEpsQBAQBAQBQSD1CAhZpV5FIqAgIAgIAoKAkJXYgCAgCAgCgkDqERCySr2KREBBQBAQBAQBISuxAUFAEBAEBIHUIyBklXoViYCCgCAgCAgCQlZiA4KAICAICAKpR0DIKvUqEgEFAUFAEBAEhKzEBgQBQUAQEARSj4CQVepVJAIKAoKAICAICFmJDQgCgoAgIAikHgEhq9SrSAQUBAQBQUAQELISGxAEBAFBQBBIPQJCVqlXkQgoCAgCgoAgIGQlNiAICAKCgCCQegSErFKvIhFQEBAEBAFBQMhKbEAQEAQEAUEg9QgIWaVeRSKgICAICAKCgJCV2IAgIAgIAoJA6hEQskq9ikRAQUAQEAQEASErsQFBQBAQBASB1CMgZJV6FYmAgoAgIAgIAkJWYgOCgCAgCAgCqUdAyCr1KhIBBQFBQBAQBISsxAYEAUFAEBAEUo+AkFXqVSQCCgKCgCAgCAhZiQ0IAoKAICAIpB4BIavUq0gEFAQEAUFAEBCyEhsQBAQBQUAQSD0CQlapV5EIKAgIAoKAICBkJTYgCAgCgoAgkHoEhKxSryIRUBAQBAQBQUDISmxAEBAEBAFBIPUICFmlXkUioCAgCAgCgoCQldiAICAICAKCQOoRELJKvYpEQEFAEBAEBAEhK7EBQUAQEAQEgdQjIGSVehWJgIKAICAICAJCVmIDgoAgIAgIAqlHQMgq9SoSAQUBQUAQEASErMQGBAFBQBAQBFKPgJBV6lUkAgoCgoAgIAgUyeqYYxbVjxvXO2zv3uG5Xbt6umfO9PoFHkFAEBAEBAFBIA0IIFllPvzhRUfnMv0fymdz73o9/Suu/st1H/7mspnPpEHIn37q6csv+vlxN6RBljTJ8A+nrz/x/z40/Yk0ybS/yPL3Zzx/wpyDd1527h0nfmZ/mZPMY3ARkDg1ePhms9m8sQ247+cT2ho+tblt8B7PH7nnF+PzmUxmQd2izZ38u/b/K5PCpfeeCS1xsU2TvYAs2azXGWdOMEYmk2+t/+SWWK3yJLBNypJ77xnf4XmZ9ji4JCVLEjoCWdKEL/hjXHtJCt/9cRwrWSXh8HHHANCTCMpg1DBWXEcFh69btGVBGozh0dtOy588cn0sEi8EjXxz3DkloaOkgk8SQRnJKm6SlIQsBdvNt8bVUUEW8IHo9guy5HJeS9xENglZCvYS3x+TIE7AJZ/Pd8S1l6TiSpqSx6lX3tfyyjVnxy40jGSVhIMkEQhRjrhOloQsaSPOAlmt64wTfJKqIApkBdVM9ECYlI6SwuX6jed4X5r8m1hEnkRQnnrlfW0njljf+ot/XBKryktCRxiU41YQSeCSFEHce8tZHQvHPBmbxK/feE7HFZN+k4APxOsKJBWnwO48z+uMSzSHfmNZx6vfPSt2gm80fmDDDXMvjJXNJWWQkMnFzf6TCspJVTMPdh3ffM4XlkVWIDjqkatu7Xjh+AsScI58c9z2UBIOn5SOlv7oC/m4QQMcNZ/PNL9w/AWxgliCsrS+cPyFsapo9Mc4uk6q4kwCl4FENl5r8+Jr2jo+duAqL44/fv+6L7T9ePM5rUn5Y5ykD3ApEOe9sewFfSAO0QCPvOdHQFaxEi0gYBtZtW2Ye2GsIAZGcN5Bv2uJ06oC5/jiyxc333DEzSBu5H47BNMxNTtjyQJGcPmLF7eCLHGMCYzgrmnfbz31gkciKxCN4O7p3/Pi4Au4rNszaXmcCgJwOW/d1zp+NuN7nXF0BLhcPvG+1jhOhiQOuMTBF2z3ge3He0BWceb0yf+zNH/5xN/E0hFkpicdsK7lb8d1dMYJqAWCuNdPkKK2w6k/xvEBkGVa08bOhWNWRfZpkOX8DV9rBbuLI8uh31iWP+mAdd7PZnw/cnAPAntrXH9MgjiTSmQBF6isYpIVJH2tmUx+QdwKzUpWi8ff531p8r2RF6oHjCC6MYFBTn/q1tb1cy5sj7P+BUbwTt8BLXEMMikjSEIWzHogiN017fvtUdcQaFCO6vCIy2UT7m2PYy8DuES3F4pLHF0DyTy+a0bnZRPujUXkMA6QQxwdwRgnDF/XfvLI5yMnOJhQwDhxEpOggohdcSYYG2LJAknfR0evbo0bG8DuIF6+uG9S8w1H/CQyASeR4FPijJOwoS9lMvn2qEQDeoa4cOOWs71Xrjk71oY9axsQlBinioDs6fqN53TGaaUg8IVAGH39IAnnQOXdPf17sSo0zFji4ALZ9vo5Fy6f/tStsZwVg3KcCgJxgaAcd05xx8Cg8eSeGZEzbqzwbth09gLICqPOKej5e3HaiShLLue1F+YULfvHhAIy5ajzAd0EyU1LnAqC4BKrbZZENQNjfHT06masoqMmbODT0OoCf4pT6SVV5QUJUmvUrgvqCOwFxopCVjjG+jkXtk5bfVusCs3aBoQvISBGNWxqBHGCOzjHb3fMXR7T4f3sCQwSZImabeCcCllYtOwfMrnLJ97XAYHw+sP/qTVqWwdbOkeuujVyMEUdw9+FCiJaFY0LsXECO8gAjv7E7untcVqk4OxQhQOJ33DETyKtQ8B8oAUOgQt9IEorkCYUUX2AtozjBEKVOKPMB+0FMu0TR6zviEqcmFD8ePM5zVFxQeKE2AAVzRWT7vWidBdQRzOe/ilUv5EqV/TpJV+8JRMnZpJkIG7S51czcRM23FwRdYMExoX1cy7s+Nv1X/fibhCyrpnEcVQQ9PrD/6n5ipf+rn3x+PtaogZCzFjiGAHNEu6a9v2OqNkGyAKL3HE2NiDh/XbH3MgOT9d2gKyiOny5LNEImODSCgQRZR0iIVz8RADWZaat9oNPR5TEpDCfwsYVsLuoRA4JBQSNGU//tDOqD1C7j+sDENSBIOK0NoEwIehQjMJut8aEAnApdG+itc1gHFgLiZMkwXygRQuyRCVg9Eckq7j+CEl1jETL94G4xIlxFxOUKOtWGBdggxwkj3HaiazKKqqjUoMsGEH4QKhmLHEC4brjLvIGDDK6LBAIkSAiBsJitVoIPheG7m/TzB977lHatZjhfu3Lt7RFDYRUR/DvGLr2kxuoNKNWEJTEgayiBB8kzR8d9pPlkKnDnApEE64FrZclvN2BXjbMvaAFtorDv6MGQgwcgEvU4I7Y/OTKNp/Eo3Qp0F5wE00MXccOyqgjSChA1zFkKVbicf0RKvppq2+F7kKkpDpJ4sQ1JqyQNsy9iL0xBwsEiLvwB2JvnE6Sk6yiAo/3ocPHCIR+PxmcI2rQCDIDvzUEBhlHFtipBhkLyALAR6kgMJNDWaJkUGpWG3VOmFCgLFECIXUOzMIwuIbJuLEdE0dHKg5Rgg8SOLaVgl2XoVutOB/cFBRFR+jw2JIc8IFw7VqVIKLIArqkyc1AYhJuDY2SOOxIjCMLxgYYI0oiC7JgME2TP8ap8sCnN8y9wIPkZiB+h6tc0e6QrGBTDbQUYZ2Se+gZCW7dcRf5L2PAOcXZaOTcOh3FmNSMJWo7Ua0gomSEOkeNkhEmFQjBwWjWDtl/mF4uGhIsWuLBzCj4qgkFBp+wxkQzfySrKKRHSZyu04QhPGovKEvYZAAJHO7HNRBMDsKs86hkhXMK04IeyGgL5x2jVq66hCJKx4QmN4gvbPIJs1ak+hHMKUoVkUR3AeeDCUUUWVQ/irrWn2SCj8lNDFn8w8BANHC+Fey+sDZ+YTv37SXYRqRvB4kSp6j/s8kqrqMWtsGHa6Wohh2HOLHtELUq0gXlsJtPwMGg1XXmqFVFB8f2DPfcixrA0CDDBh81oYhq2LrgAwQchvRUWaJk7ToSx+DDbdfS1gU9JhF23UqtiIKqJHSLFNvENEBE8QGdjsK2NjHpw5YZzsnW2oF71F1kakIRI0kqdkui2K5O11HtjiagNEkK03nRJfhhEy2d3UW0F39no0o0sObEeVEErczo67DQnqO+OoxFVmEDoSarhFPMoVoppowlbLlvco4wa2gmI6AVRNAu6rAdfjNk7X4Lg7srEDMWagQ6rFwViaojWhWFDe40k4saOIDEqXOHbeHBfGARWMVFXbfSBVDEirYuKFlh+4274wzGgRaK+t66sIHDRlZhkkeQh1biUVqbavuOErCuM4D+QA+V6hKKiPbi7+7FDgUdg4uLLumLKEtJKxFxUeUL649qRwjHtW0hL8S6izrV5EaNmTYfwHavar9wz3u6hLcaWV8UgbaFGzIUf/QrNg7h6fByktVA33PgrQ3ojLoBbdkprUQo+5rGUTMWXVB2Aa/btaR+xpFFBVnNwiCwQOYRnNbWHqKD50CPXA2EcA8oFxX9HuEtNx2g0xmkzskYuPjntFRZwrRkQBbdtmHAYuGYVR6sNbqcNJDdz5LVaiZM5aojK7VVBfLCEQhwumBnkn9IUcVd93JUJBpY/A50bNQRyqK+hRs+xxY0Or9NzyAbXVPBQBLmsL4u0UrKXnAc3S4v9Ae4Bl63A9fAv00kHqY1D3PSxAa/a4EJT6Br45sTdEmfLmFz6UmXgMI4UZIt1R8LYwysCQbnMz1TQqxLbtTKFX3AFGNMVRFiA35tezUV7tBEUlWTxwLhlRIqJ0bANSyywqoocFQ1KJecSnY5B2Q+01b/1F90wz86h8XMH66hPXE1aOAYuq2VNBugh/2UoFGUnxBNyZzoFkwqCxrktNW3LkdHNDmwCRcM1nj4LnBqHx+KCw2oOmXrcAGDVMfBgAd/qxXRgJPxFs1NuGBSAVtwwThhbjYC1lUcgBc994K6pIcUERPfkP0WxUWe2lOHsSGzvPzFi+GaIsGgPoJgWrKt1kRW8LYQeKsF6ki1FxII/GRFHYdWG4HMvn50ukbcCusGAy821SWPNmc3VXmI7x92HtUO29lRHhN5mqpCDIZwPg7vRaKiVQBio1a/gT36LdIndk+H5KYYG2xEriFxf4xgG7p/EDtIHku6HWpioiYUWNHggXD0oSDJ8W0Izx+hTaoJKMYAbrLlipnBeqUfkwCTAN+SZIkWCWrM1MUpnY5IbPBfXquzX9APHqJWkz7dmLrugs4GbDaM35X8UvDMmV7N8OHD81OnTu3p7Pyfkb29Of/Xgt/4swvv/+Hht3hfevni+TV7uz4+cfXPH4XP35z3uavy2ZpTM7l+///ZnndX9DcecNXk39/6sYcue+L+03984sfwQTDGpePv86+7acvZp8I1dAz8P71+zYcuefSdPbUrzrvzg/59JllQDnUM+BzueXbuJadSWTbN/dSpS4/5t6t+u32u9+DbH3r04JV3XI3j4z04H5grfNY540srDhzeN3/hjXOL18KcThq5Yf4TOw6/mo6BclJccvXD5sM1Ki5w7VfPz91/XM2aq+k86Zzw3zXdu64GeR5YvNqfl06Wx3dOW4HXIb7UEEBHIAv8vXbekqsoLnj9iaNfuurxXTM8L59bQeeAegf84FoY55k5l/nDU1ng/zDPrbsbinNCXFWcbDo6ftzm//ze+Os/3rLuh/OpncH48H+YJ/wb5frZZ/94qqojkLW/adR/UrtVda3K1PHFx3cu+NFJIyluMI4JL1+emrqr1GeE0nVN3VWAt5fJzoe/qa51PvDccV/wVN2p8sL/Ye7Lj1z8cRMu9FlhdQTjA+bjRuy76pjVNz8KGKDNqJjCtYDh72b/vafKAt/NOuu4+3272TTd1ynYFoyX6e/1/0/He2P+F3au+eDfXa3icvDC5p3wjr8bXl9Y4o/gp2jHaDdoMzodwfjwXN0cECM6V/ABnY6uOHjZ/F//YnOJHVEdqXaoximQ++4ZP5h//nNfLsOgKEe2xvdF+APxD2KDSRYdLjRWoK9MXnGLL7MOG6pzsD8/Nhn0rvNHmBPyA40POlzUz4q/FHzGGWdP7e9vPLK/pnd4Q6bukVyuprG/v7sJbnhp7mfvOnHUi/O2/e7RI3WDvvLB8xbj53XdXSsPXrfsqd9evPKFj/5kXvH6zdPPPPnUKZsWb8+NmvfHN0d9Eq7Be+D+/vqmL9f073sq29ezMldbP8/rzy3/3TFfrX+ja/jKb90//Q947WvHfurLc8ZuXHxF421/Sz+H8feMOuTuun27boRr67t3rHz3gImL7x7/9zceOXbX3L/5l7n+5/AHr83k+lYevvrO89U5vTnjrDm9jaPm+U5TW3dytq/3DyBLY12uRx3ngqOfvvs/f7M1Mi7wjG9/bP3J8DedD5WzpmfvdVP/+LOi/Ld/+ukvq7jAnECWk3pXlOBC54Z6gjnBvFUd4bW/ufCJu/7i1hOLuND78BrABHT94JzvNKuywDU6GWEceHZt796i7lFX//PnbXdTe4HPx/75qS+s2jH1KbAFOn+TYcMzVR3BtZct6rtr3J6XblTxNY2jzp/i8seNo8vGAXuh9ow6Ve3Opmv4TjeODkfwx2sPv9X7+rrzngJfyWVq9unmgjq67Yhr67mygI6y+b76Kc/8/Dq0we4R477SuHvrtTodwTUUL90cqGxg61xZEBPwRZAJbaW7aexcXWwAXM4c85S34b+fKfNp+A7wUO1Ip2uTP+riBOjdZC/TPnLsXQ9un+OBvUM8mrD+wWIco7EI4pTOHzFOqf6P9wLW8G9qezp7gZh5yWEdi9U4BePDs4ft2nQj6BjsqGH3tutgPJOeTDHCZLuqP4IeAI/PjHvIW5ObufipbZNuRFsz+SN8nslkapxtQLgQyl21HWEbGL4ztFLyC8es6rStZQSltf8uKtMPq9l+SJG2dwrrTOWtoWBOxYN8rrnA97AzBv5Wt+mG/XE93ZzC/naY6cfiwv6InBlf/g/amZ5p+5E+0tLzodetY8Dn2MLjbj4x6Sg5XPg/4Gmaf1hd63QENg6/bwUvpYUD3S77Nduu/kcdydqePzSuSSVlL3o/cv/AJF1v0bWwTXHHhM9g6ghlocse2EpU5cH2tClm4hlRl55t8zfFKdxoom7cMNkMysDxKd01pA3bDjtJ7966oAXav5x3D7LIqgAC31FNoIGgYXaC2MmK98upJtDDylLpBKEzdFvw4e6qSkJHNmIL80uwUYhTxcUuizugUmfWBeXwAVWfOHCCRRxZ1A06Lh1x7cUmdxhdJ2O75l89DiOL6efs0xcz+T8N47IvTtLFGQN+dwvWBweBrHgEkZRh2wyGa0xJOcfgB0J+NTP4BMFPTJLQkcteuG/CTkLXrp9tT8LuTMFNl1DYAiH3gKYNF64sNlxcQYnOKwlZYLwkCMJWPXD1bK9mzGQYLkka2tiAnSTXTzK5MHJ9D8+B39ODzU+cdw+yK6swGaE7O+UxfBKB0BXAuBnh4BPE+I64siSrI15iYgt2HGNFxxjMKiQMLq72Bze4u+yOS8BJ2F0SstgDe5igbA68XHtJiiBcuMT1R071gaSVVDKQRMzk+otLXxxfgTGOXHXb+0dWLsPmnmB2Ac8xJvsYQ1tB2HAJk50ONkFwjdV1HXc9z5XhcvQ8FLK4nkGzZdvcubi4nucKFgOB0E4QHHztgZ3fHk3Cp5PCxTYnrj8mVYm7E3x38piULLbKlVslu3REbfO8dV9v4bxyblAqK5eik3EyHtG4ycptBC7lcefjcnhuW8fl8Jys3VVBcOdku85lB3RNxdRyCNP3t5F4ErKgA3KCu9vu3N2FpILPYOuIG5jcfsT1aXslx8noXTK7sOdURK5nqIHf1F3gjuOSOakkiTN3lyzU98/f8LVWziaLUGSVpMO7AqprstwS22W4SQRlrhG4yGooK06XLjlz4uiIQ8CuwM4Zw+XQXHtx48INqLZqhtc2c+PLax3bK3GuLPZ1k2T8iFehcXBxxZck7cVFMpzkxm13bl27ElDXMzgkRAnWhqFLR5Ssrt94jsf52ftQZMXNcl2gJBEIXcbGaYFwx3Bd55pvkrK4jCA5HbmDGE8Wd+XqCnSu75PF1xWUeQE1iSTJFXy4unYlA5wkyaUDjk+7/IjzPVzjxsUd2F1VXhhZbBsRuLHBdR1H15wxOImfy68pYZnswqUjSowPbD++lbPJIgJZxQ8+LlA5BskxJg7oHCdzjeP6PtlgaieR5GRxB2WOQbqCXFJBgzNvjixDdQ3nOS4/4cyZ5yfu3WYu8nXJWpCDkwC5ZXHZHSewJ4WLa96cOfNk4fmjjTjDdBds1aJKVrrK0YWLWsVNf+pWeD+qlY9CkRUHVM41HAVyJusiGs5zOIbNG8ftZC6Hd82HQ+Jcg+QES9c1XB25WjKu57i+DxMIXS0Zl4449s25hjOnJPBNynZd8vKekxxZJRGU3XNyV2gunx1Kf3TNh2OXGGNc29Yp2cC/1Z844tgu+i1U9rAj0PWz94NCVi6H5yiQM1kX0bgyMAqWLaByxnHNmWMorvlwDYljtEnIy9MRz+Ft+LsCAofEB3Rt39jAwc51DS9wu3Hh4OvSYxKy8MbgZf6ujJ0zZ841Segoiedw/J7TXcBxbMmWa85cWTjjlJJVebct3BjjO+Al6TCm7XBwJLJyZaccQV3XuL7nEA3H2DgK5JAVT9746yGcOSUhC4cYOc9xycsPhHaScT2HYy8cW+Dh4q4gePK6q3WXDji265KFoyMOdq7npC+hcOvRhX8YInJ1IFyE5UpcXPcPEJDb7vBak945suAYcO30p25dgD+VRMem/w5NVjyDc0/WpWTX9xxgObIm5WSuZyXl8Jwqg3uNyzlcFTBHR655u77HAOZaGHbhz7EXjiycgMohCM6zOPi65p2ELJwxkvIjl81xnsMJypw5JSmL29fcMdOVcHHshdO94YyjkpVawIQZA6/F34FLjKxcTub6ngaNuCVtEsrjGrarh+sygjC4uFpiLsN3BTCuLC5sONmTy+GHMmi4Ah0XF86cePZi36zExddG5C5bcPkQp5JM3qftgZuDi2veru85yY3Lnvi4uCs4GsALsueb1TjAIQiX7XLnVEpWpcc5uH6k4nPkKn+ThfEHW0NXVq7JcgV1j8PLNNCZ4G/dG9FdgZ2TuSdhBJyg7CIHriG5dOD6vtwQ9UGVgwudU2HcfGsul1mOuhrKoGGzFdd3arZnk3so5wS6zOfzHfl8puSXllHeuLKgn7pa/xxSC2MvcRM2l43HxYVLZjxcwpGVzlZd8y316fhnAG0xIowsFB8gK9smi9Bk5QqY3KDsyui4hm3KXkzZhxp0qFPrCM81X64RcJ3DdR0HF1ciEEZHSSQDqAsIeDAeVAKZTL4VAiz831WFcHTAybZNthI2sLvG4bRhOXPi6Fq1X8A1k8kswN1Z3DF011G9qbu9dH7kClJcHblkdn3vii2IPYeA4Vk0uVKDtKs9jbLYrnPh5opZ6EMcWVxzDxsbUDbQbSbjdeL/TZjp5uKKeXhPCVnNm7eo6YADGrOjRnV3v9VdO8bbtbdPN/ivL3jiyqb6/J8tvPmks9Xv4Tv47K9uO/EaE8j0c9NYD1zy+H268U1j3vY3z8yfNGrvNzZ2NX0X/t7bk/k9VwYc0yT7f126cvsZN80b45qPbe7w3fa9jSsu+NdjV9jGwXmY5s7FxXYdVxYqpzoeyDmmqXt+WIxV3Y9o6P8GB1t4PujWhB8XF3i+CeOwuJjG4cqC9qLzlzj4Uqy4ssB14DPg16gjG946GwaZDxm9577+fLZo4zAmXAu2D37J8WnEFe6ryeTm795X8120szC44Jx0NsrFBWQw+TVXFpdPh42ZupgLeuPGPJs8YX0AZYExXbHNFrs5saRIVgsXLmzo7h3W4mXyDdlc/vc9tRn/lzlNf3501ppTZo3f+cvt3fVLz/3ZCUvxul+e9+SSN7saV35x2ezHXMGd3gP/xnFg7INHdc+j43LGgmfTcTj3wDU/nrn6FPj7sj/NfUw3xv2feexXH/vnUz7BGQ/uH9PYs2TtlpHnUgzCjIHYqmPA87nj2K6LoiOQadoHdi3Z8PYBS0E3w2p7T3m3r+6xsDpSMQRZOGNQmdE+qK65uOz+8GunjHh4SpmecX6oZ7CJKY175p2z+rSibev0H9deYEzdGFF9AMajc3n4gt9v/PBtfzbJZbtwD14Txndd49L5RfFNvB/sDXQTFhewC52dcu2FxijwaxrvwsQbeB6MBbKoOETxx6h+ZIq5ceI3xwZs13B0msn310ZqA9IHq2Uyt6RThYf7sDUEbSFuSRsXKLg/3zbS/7XVTNtO/2+1FOa0HeC+WXfMaln7ubV+KYxjwL9hPpxX2pTiWliLKG3p8Hvb+daR+d6ZTR602tS1vDg6GphPQVpOeygJHfmtzd39Hd6IbCe0GOiYsNjMbTtQHaHtwv2F8TLtOJ9866iOwiddxgVflEH1AW67a9Yds9rWfm5t0eZoC4/aIMjsZbzWtZ9d65QFZcL7dQvxSehjqMeg/gTPVm3aJo+utcX1aV2cGrCXUpvhYIItP6qXqP7IeZ7uGoh3EOt07eqouNDn+Pb6XvGBsdAlp2vZAu+PTVYwEHVW7mTBUeFn59UJUdIKY5AuQGzfL7npiI4z9+zxzvja5mI1hFq2AAAgAElEQVQwGAhkfOKcdees/NrPri3BNGzQyLeN9hWdadtRJD3qHJygDGM82VDfccK+ngU9RzcW14cKpAl/3K/MioPnYNwLDvbQ8GHNVEdqYObYC+jIy3sLwO5Mmwd8osrkl3v5TDOHrEAOGhDZPnDnrA4v77WjD+BmCUhQIFnDoOz7SsZrDkNWKFMlkhUlcWpLYdfQ1OQxrB8Nhh3rbJZrL0nJM+vOWR1gS5QkcDczJMj1n9wSixei2CsHg1hCUfCQpbmBMMqEklKWOs5NPzwk/2Rjo3fHxRtK8CjMCTYEDOxeM8kQZL8QfPxAGFXWG6+b0nbpji5tkFS3xwMpIanR50Fgnz11Suual1/vxGBbWumVb3uNKu9Q3Qe4rGpqaFV1pM8c9bjAtZ/7ybT8k40NnabAj1X27EOneCfs29d6++a3Fugw1j03bGISECeQlV9dwZ8BwoLEolDpQTL14LCmFjUR4mAP4w1V9avKY0pIXXLb7uNWIeiPUTBzyZfU91FiJrWVKHJAzJg9dXIxTg0kAIU4x9ns5Hqub9dQiIToBHC6EZHICplZFRrAz+e9Fg4zwxhwf5gJuUCK8j0Ep89PGN8KAYxmuQPBw7wbiD4PyTfunGCcS7u6Wi/Z0dWObUnTvJ64elz+xKu2lunwv74/oeMrB41tufatbZ26SiQKTu/3PRiw17zyhpM8sM2hC55n7t3b/E4226IjPUpU/r0Zr3nNy69rW4GmZ3B3U4GeQZYHhzWV+QCtsIBokGB19vl+68X2fFrFhpEzSrDTEmXGa42bPIaRO+y1WNmwY6ahGxXmuRinznx3r7f00hfZbWVuIhIkGnA5JOywLFJMxGxyDlplZTNCcFZOOwYcEIR/sqHBWYnQcl6dsClocBUILZ/Zhx3y3sKV137m3r2tOgVyslPABALp5ycc1MHJ/k3yQZV30+hR3u2btno6IsL7itWTJngHY3ReuqOr5dIvvR4pIeHiN1TX4Zw4ARvW67xMtozUIEFa88ob7bOnToYgVmy/FTFtHZmfPXWKv50enAyuv/atbSXtYfguwJ7VljNVv1g9mNai0OaCTBjkhXW6srZ5UvjbfCzKM2B+UJnaqljduMVgF6HtWZY8Fj4YNMyi4KLew12vgfuSSPBddsedk6kzBp9fu21b8+l7un0/cxUj2PLlHPcIHciKRsggmUKmmu1U2yjgGJd2dXUcv3ef9/mJ45zloqmSA2BN1QUXdD8Ijhrlt2Jsz7FmkMF8gBh8g9IEQq48mAicsG9fx+2bt2irK8D15tGjWm8aPapTDaZYKQJhQkIQpo3FlfH9uM6vLhoaFrg2GkBwv3n0AR2XbN9ZbIGivDAG4KLbsFDENLAFPzjcMauloIfSViC2jV3Ymu4PAo+/vumyF2h/3jx6ZOhMNayOorbsbEkX6OA9/9ZWsab7QI41r77mzZ46pRkSC24LVh2Pay9hcRqM6znJMDw3TIJvxDdYV3fZnWueSJxqrCsk7a+1w3rv7KmHQOJnrK7AP7BA4LR3I5EVMOdXDhrrbOGBU8NutMVffq2kFCy2urbv7ISqxsa+AYMDQ5fJiv1XTmtIBz4JUH51F1WBmA36hHfHrJZrt21rjdJ+wywa8ABZbt+0tQU2SagOC5VDUAF0qsGUZv2FSuK15a52osswo34f7Aryd7LFacdQXDAImdYFcf5QVV6yY1cRO6ojGE+tgGnSQuerEj5WtJCx66oumgGf0L2v5cBczl+/pBU74oL2YiPgkrZKyB2BYfQW1fZ1z6CtbCCdMMkb4j370Mn+0FHWf1U/cmX3NpzUncJhME3y2pIEf8I4ZzdKH+9Gt8w+dLJPHlF2mNIx0V6o7aKtQrKBf0D/JvzRTiDJj0VWprYAMqe/zmOprtCpz3x3b6faWiuWirv3QmXVYhuHOqtquH7WOWZkM6f/CuNcsmOnR4mTViGYSbsyd61zBtkEkIItm3YZr0p6PhFt2trpZTLFDJOuq2A1SDNQf22nqWm5rY3lkiOJ7zHzumT7zuXT+nqavzJ2bFnbjfscrC5gTv563Nix/vx09+P81c0Rqv6D63yZ0FZ1CZHaCqT2qKu6SkixdWQ+077Tr3Bpa1glTlu7JCDRYjIVJ/Da8E5inSjwIV8vELDQH3Q+pYsvNHhxg6muG0LtxUTCuHyAzzERKuAPHSBd0qjiiS0trl2HuQ7XOH+wZZvnSvCNVVVhzctvccPfql1y5UHihGSQttSxKoZxQPewxPLV8WO9B5uatL7vJ9Mvv9YCLfu+mY3+m21sS0jGysrUFgDlARMGi/jGqggzVQga6hoOZvzQIoQt1p+3ZAoYZICUVEel/W1XywBLaNpa8yuUw6YU25CYcXPW0VCxVHFYARWUoF+YtwYMZQEVA+Xpe971t1F7Xh6qlHbYqYZGp1ZyJcGNtCe5hpjEdUW5d+/1/C3gXraT07+GZ+vWeEqDu7/T0ZqtBZmj3zvHClc9VkCDIR1fE4BKKmWKr18FbNpa0m7E59CMXCVKNcDaggb9LmpwcekUSUK3I9Z1bxleQTWPAcsnsGCrNL1WR45qJ8A1X1PXRU361FYU6ObJhsbWm8eM8kV6sqGhXXc0AJOYE7r3wRpyWVu5ZD7B8QJYWwT7M61VhsWTxBm/PQq+BF0BV4yC+Kx2d9SYHiR+1iTSllRAm9dv9QUVP5IPJGjoy14+32oiV6yi4dq4ZFV2sAvZHSolXSuFAlsMpsGiNm1lYXWG7GuaDC0rdQEKnYD2PnXGQEkNW2uel2vx133IGgXc6yJhTTDzd+/RjQy2Fp6VrPRO7Z+JUB0dqwBaycGcYMu67jtT75+2pFTZ1DNfLkeD67867gOtcN0Ptr5dst7AaTNBRgxVmOpkpVVQoYWnc1aVdJSWUknvnCQmxQ0VpvkNOJWPb5EoVT3rqio/WCuHetXgTedHZVA3cpgw5G6OsG32uH3zVj94u4JgMJ/iYeaygE2qqmI8UNZxMY4c0dPTQv0PEgG6C9ZlM3D9i/X1nWrmThMKHVnSlq+fVOS91tmHTYHEuyR5xyoexnDt0PWrildeb755zMgW2CB16Y4u75LtXZ5uo4/Lj7QxLNjABX4M6/S2tf6gq9Gitt7VhI22S41xU7PRZaDYKNzlt3oBI7/1XrqLubjbWunCFSvFrW+3A6H1zWpqdx17MlZWuonYWinGYKrZcEAzJigVTYuwRVAKxlS2EYM6vS57Q8dCQ5t96JTCGs+mLVCodvqGNWpUSf/XJo/BiMrWhZA8f7D1Lf9NC+qakemEtzYDVQ6E6qoArGQ21NYvh8V42iKzrVsFmSmsKfhy0vsKTgzVHO8tDlClQrBTyR8xw5ata31SV4mrGbbJWTXVk19dQdtQnR9JTFpgQdi2rlfsz3uFg7qIUzFRCLJubAPp1jlMY8B4JmxoOwuu05Eat12GvrDm1TfKNzwF1dBNo0Z7ug5GGSFlvMIbP/Je+5pX3wgClr/DcjmuV1A8aTKJ68xADKRN5OunLOmzrP/SdixtM+qSaOpXupavrqOCG3Xo5ivoltCWfJGMNcdN0Ldg3RKue7KxwceLu5VbwdzfkIYJMe5g1nSa/PVhWEuFtrvaftXFF90asK+jQyfDM/1NXLpkGX0GZLlp9KjlN48Z2brm5dc8rKqo/LoCgHIJjAHnQV3b160bLNTMRg18OkdRg6la9WDbrAh88LYFtRWIrQlgal3pq1YEJqf1qzgCYmEOb7R7+VwHEuBzRx3lG9TRzz/fCYp6aHhjq2ldJMAEX/fTCUakOxOFhkHWmAoHhWGzQfCHGoGtwlFbVqrBYyvwhbq6kkzVD1CG7dfoTChDCd5AUpm8vzGj8DaHgTUzHWHT3YlWMtJUjmqS45/PUHZTqk5GjhsU165QfnWrvu0QMDgRYOba3o/4wtk1NfsutD4giOWXf3XcQc1QUYJtqU5L1kbKtqCbMly6/lgkNTUZUdpPOv3gZ4DFp3ftKjt7R5MBU9JXDMzBbjI8pH1Cd7cH7UPYSPKDLW8V3r4StIGoLFidwk5NJAC/cg/aRNCqU4Odyad9wjl0ykDSQLo3umMFNI6ZWr5qwqBbz4ada7BmpL7VpFBVvdaqm7fP6cHr3Pz2fWGzkZG0dMsvtKNVGK+0u1C0LahqX3mtmCBz5o1E4sdEL9eCCersww7xbb2MAwqvUip2KVCHD41o8mC5AmLGn446yl8Tm/n88/7fpgQCl26QrFwHg61kpfY0dT3kgJn9nm+QbZUtfpdUQMoiH9yjZV5CMvj6oM9PGFdUss7oirIUDqTBHz87KGktBGBDhonrKABuNu81H73ueb/dZslccFHfP/CmywaJU/vtO8y+1UPHGiMoWfxUgw4NdrrsDNfkytYH75jVcvvmrR30zJZKVGqG6LdWhjX5H0NmaOvXc4kKidO0kF2SKZNdYDoSRwKF7A+dH/7WVUhBS0S7tlpoc+ZadFUVtYkAezySULqzNegcQCCDOZqq6eL8wdE1O1t1GS62s+75bp+X87yWT32jtlOTLbO2wGMQ9/VJtuKXJZd3zoJt/8vVHby+/IHv+tWTn9Bk2n0dMM4yYdKkEj5m5i811DUDdhjssp7XCckjJpfYxlYrHjUhU6vRQG7fTiCQ0za56mN05yfuuFW7FOoOXZrk2apzJCx4Jl1zLknWgqMS6tk0taNVjIcTxw28KSdI8OhxIc26bNmZM2zdg78jeVCbwPiFcUUXd7ELgySuxlOYo98NIXsT1O4a2FLfzIZW2++YWcmqZAtocOJe3dkHRDO6L9eyozbbCQfBdGsj1OBU4JEc/F0jhQDpG7/a/1QJRDViJD2sLgIj6Fzz6mtlwYhWR2CMz804yn+bBiUrv7Qtb6mVvfsPjFqXUdFsRxegdesYrk0i1urL8EaQ0jUtz4M1Jd1bEyhh0eAD+oL1DN0B5SIRNzSw2hu2lhUmNGW4aJIblWRAxsJBxEJmpwaAMCfp4V6wh1zGW57Je63HrHve9xE1uSB4FQjTQEJcWdTEkGaj6PxHfXpzyUFLU3tNDcLwf6zSIKmkW+51nRBIbtTdb9i+g1d4uSptfL4vN5IOBmLFVjAzL2zEKbTMfX/MeO1IVsV2Yz7vJwSzpx5SkhBTG6eVG4yDPq36vA4jJFSwI916Ntqmih/ufNSNqX6Ga2Sfnzje39ihkiGM/W8HHFCyQ5qu8eN4fjwsnGMq2d6PuxyL9hkkU+/pHZJn14Y6PAxfEufoRiJ1PbAoD3n1mxpP/RhfeAWcv96r2hwSLJCV7TfGnOeskAF1JMNRjuroOpIZMNiMv9jmjxu0oahy6NqWaaeQul6AJWZJ0AgCO5LIszOOymfAqYLKCgkUS2F/DsWs8g3y3r9c8NLZ0gDJxYVm07qX4LrGgfYlOHQgX0l5XvJd0KrChCDs9medzgAP/w0FjMPhKvYqKautYU0lXpIRor3QdoxOzzr8KC7q9/BdPu91ZDLeAsC1JGiSN6Sr9+ne8WfSHcxVd3ZI7S7QtRUI+kicJS07hchtm4OIH/vrH3gGzdQtwXVdnEewvstKSvAe8Kt8xmuHdpAt0cIXB2Oiod4H68zQvvSDeOG1aGXdm0JA3eIF66YLoBoFXSrJhvHIA/oQrmnr1shpHKCdpDBkVQjcpP0ZVES0QoMXNtNzrKgjdbmiQO6FF14jIRQ+G4hHNGl2+T1dw9aR6Om798K2eec7KnXxFOTCeAeJHT1GhMlnz9HDrD/EWkJW8JtW48ePz0ydOrWnra0tBw/AjA/L6CgHTGkGaCeZrA+8/uWsA31auMb0aiSqNFSiNtsmmQZmApjNoUEFWRq0Bn1SGmh/FLLAwp/yN3SYApX6OQYX26uebGOBUaAzorNhIPQNJgi6xawy4itsdNWOa3eULVirutO1ojCRMK2hFN+MTh7EsU2KiyojJSf4jgYHmx5c6zwce8D2FrRgYV0E/mAFQTPVknUIskMMn6HLfNV1HMyUISG07bKlckdKppSOhYmoC8G7sM7nY54vrOsqVVFZFaHI5x+iB7KClhUl+MA3tDsYVd1gYoaHZ026w80htravTe9kY4J/aNpfswvWvUir0489uPGErgXRBL/YIjV1eQrVlZWoUVadjtD/8VVlLtLTxVMYH9cF1S4EzqXnmCbri3SLZDV37hfqRo9+6/hc1qvvre95ZnhfQyM8YOuHXzul7wP7lhzf2z1v43/Mdv6Im05BOMakX0z7xDFnPfOrZ5cd+4krNr18yvUTD2P/QCOM+52WFRsvOnBi8cfwJvz6COMP4/373EeWjK7rWfLRP3xEK/Pmv3pxCdwPchzU1zsPxn+rtm4llQnGOO2Iif6P0q165Q3v3f6ax/7a8mN833l9/ZJvHjLd+mN9FJ+lM1efsnR6/S9X1TWuzPZlH7PNR8UVnjWiv2/Jyw1N56o4wpwO27f3l/gdxZ8TOHXXgN46945eCrZwya4d8z69de9SGxa25wD28D3O981Pr9/478/sOnfJn+b69kDlhe8O/rfpk2C+Dbn+U75+6NH+j2CCbugz3uwevhLvtz37e68+96s36huX6mwPvsPxYQzAcXJP9xL6WVT8dPep9gL2cN6M0b4t4h/A6LpXnt3Ym8msBLn/+6JdS0AP8P1F9Vt++ZsHTiixb7RZ8DUc4y8WPrnxn5oOXIp4b/zkhl/dtnXLvK1e7cp/OPCgMrsD/OHecQ9PeQx1EdY+0a+ozmzYwdxBf4AJXMe9D8cEOc/Pb593x9hhp8Dcbf5hkwOwge9d8wV5pw3f6ct6zhMLWD/Mqj733hM7fnXi5CmP9Tf0L3l0/WZfp+hT8N3xUyf7cnxmx27vwd99cCnY575szWMYY9AHIM715GpWmuIT1SfaddjYC7iALNRvdTii3iGWwvfqcyb9rzUbn8oMK9oijgHzteGYt/34YsvZnx5bu7evFwY75Nz/2TGmL7fimf8356yozrr5b55blumv8X/uevzPp1/zvY3PXgn//vqkY67hjvnAKQ8tO25q4TUsT7y8acU5K//ceu+dcx+d/9nVp1p/Rh7l2J2tWzEi1ztflWfLp9Zfefq+3fO/8vqea1xjXf/6mh3b6hrP+vaEadZn0vkuOX3Fsq+N/8D8i7btvua+357AxgKfpZMZ5lTfn5vfU5NdAfPZds5L88feezhbJp0+AMtvHnbAMtj9dc6m3rNcWLh0euxfPrXsv4JNHJfu7Jr/62Unj6b3gM29/ssPjQa7mfCvR5+Fc/rSIbMi2yCOAc9RxzHZ4w9fX7sszjNtOMAzwe5UewGby9f0zwd/AV8BGUCXcO3Tn90x/9ZRhcOs6EvqM+D+C7u6PLAn0Nu9E+uWUXzBHo6r3+nr8ubhB14Dz6BjwPd9I/ct83LeCpChZm/tirD2g3iCHb5T13AN1yfgPrDZsLijzJneGn8+qOswzwYMcJwJdx9dYo86PUI86s3XOOOQyQbunfe7K9/pqVtx1sEHe0+/vWHZ6b8/s/hM1Buc2XrixU3XQKwDn895mRVx7RHGueKQ2c75UbnBD+H/aJOmOX1r84b5EJPAVg/s3XelKivYps5uAcuFj51u9W3nmhUM7HrFjSswwfe4KwvLUd0inGscXHSG6+K82Zw+BxeB/c/yXitdt3LJQ7/XtS849+O5LrpDy7auAmNiOwAWr3UyF+cUYz462Tnb2Dlzxmtw04zu/YXqgji2dbC1aXuOCT9ccKcL7zgO3QxQoley2B9mbpxrbS1JbC3CXGAnIIwH+l70jdri8Qfbex8LO9u2+K0zU6sPvnO1dDjz0F1T4lfBsRDOWNja1unIdT/aTHHTVMZrB+xwC7XrfvyetnVhHqb7IR5FfdHugA/ALwT4bcCy85hqbIgSM9U5q+uybEwKB9utmzRobALMdDoM1i7L3vnIiS0ssoIH6HbVcScK19EdO6DgKMAjWUFG6Dobw5WNAhrFQWiw8wMK2QLPkYH261Vlm+6nDqSTOY7Dc2RO6hqcOziraV0Rz6TgDj3cXWaTwUQClKzo+iSMZdI9JiFRkxibDsFWYNehLZjSxAQC7zF/vdk/cqG+qFd9Du7iXNXUoD2obduZmYR+i1gHa1Bc/NC21fVDjkwwZ9wYgDYQJQGl6zamJIYjD+ca3WahIpEFZ1BhJy4mLXSHKmd89RrcWaraP2csiq/VroMdoGHiKd1ybxqbRVZJZBB4VgW3T5p2jLhAw4VJ3TkQ172675MkK6x0whoC3cmmO6NA5UajxQCnc2pbUI6C0WDeo261pY5Kf9GUG3yKzkgW6MsyPnIIHJ9ncyzdd67q14VZqPngucGgUoaqiZOwQYUApKa+pQVlo8HHVkG45pKUX9ENBHFJwlZFoz1wKq4oSXVYvGzxFf0D/T5sMqwlK0NHxiU3h8TVeMqNhbYzjygXi6xck+B+Tydr2jHiGkvd5uq63vW9WqVwwVXHjZpJquO4SFw9Ha46NSWzuA7vwm6wv6e/VeYKPmWEpLTvSvSsZPsqpibd4uechIKOgccL6P3wb1OrpCQ5IWeFEAPA5YR9cKbRfmQi2Iqs/XkdeEaZPwZnm+LqVZdQcSoraq/cnZhaogxapzZ86fZ423yHgqw4eBcr7LzXHDVGwXOS6rqYfIbuUA4bf1zHTwaVrEwGp/bhVWfmKA+vUbdvh7lXBTyOg1A5wpS/VN6StShDn18dWw0MdE7qd2GwiXstYonjRNExzThpe0gX+NR2Xdn/SdAHmSiOLqeidkGDhk4OJDJo71EMaRZfEpQVuXTJCx5PQJnDJGyc1k1xvTUhsnIlVCbbKsnKCeGEtUVq96b1SZNuShKFQAaoZsISRNKVKtoMtII5rXAXxlFjFI276tlU1a/Cxh/TCxbwmYNKVqYgUCxpPa8zygIoCh91sVCX4fpAh+yvGzNgTZuJ43AlZKXZHGHKZtTAW2wRxpgPR17TNWrAjtu6UIOPLnCY2qFwLW5QoIRBr3clPGgXSECYsevk0Nl8WVKkVEu2QKhrUyfRlleTJM76mamK0VWONKByg1ZJwhfDdksSNs0GGaojW1Xt8kebj7gSoLD+hXYQZ1yOH3Hl0nUXyipqhg4pqb+vlZWp1I5jBDonC5v1ULJS+9ZRMo4oStIZhas6MwVVKrN6TZT5cA3WSlbBIitcw3UwU3vNVS0aSTxwFiAZNRtV26Wu9Qu1HWTsGhgqJSRHlTht2ERtp4XVH3f9TDeuTn7tGp+jgtQRWlTbVcmoTPeKLCYdhKmA1bgE/4+bpOmSYS7xm3QFn/vJVsSEGv0Z50djbxQdUh27NlkMWmVla5dENQJVAa6WjMtpoziVywiKVV+ELc80y1ArBVsGSK8taxM6goQLoyjflxEms6VjIysMOLrq11YZAR552EUXvONPDQC0WrLNVdd+1e00MwVY7ALAM6gstuCjq8iiJma2xKIYwCLYim5NJ4pf6ezbVfHa5kS7C2r3RmefLl3qKncXplHah6YxEdM43Z+S+MKoeliykOUKnQ5tCYfO9m1dg0hkRSftyq45RsBZfNU9p6hAhpNxgQxjlLRCs2XunIBfFpg0mwBM2T9mSa52F0eOuNdosyumY5jIykbANhKHudjIAMbVVV1cDFS5oshiCz5qxs+tULnyY5ZMd5aG8UWcr59l43ZlQ2Li8ituhcaZW0nrVLE9kz24CJZLEmoXIMrWeVus822aEe90YyTVdTERp0mHpgTL5S/qHEKTFWaIukxVzVrB8J1GYKlAaBDWBeowZIW77BA4o9FGKI9NxhNGGboEgBqFbW1Pt6ZSrPBCzoeTiNgChrElx3AwVUe0SqVBlAa+qNk3Or2p6gobFDHwY5XCud80P+O8mRWqK+NXN3vYjkHY5lFCCoF+jfp32KEpTkSpJG1B2WafcVtaOhtwkTTHTpJqByfRddFV++ibWh1a9B42+TKSFQCk28EFD4CDabY3CZRkFxoyopPSsjF5maV/uhtebKnsVFLXHGw7ZIrtQnK+wOpUId/8YMt0uIRlc1ZdxaQaua4dg5UFJ7vDJATekh0l4NIq05ZYuIIfnuantqdt23ie/xtPcWSN0//HwFSykYBByK6smX4ftZ1qwhjXkBEz1TbDBo+StlLg56bdarbKxPRdWHlMJM/ZTq3KYOrE2MhTew+zqxAmAYxSWZnWk8ImA6pOdAlLSdFimX/YeRjJypRh09Lf1JYqMWLHAUwdiOqzdYuBarltqzzoeLrWhS7wc9shnIDnIixXNkp/6sBk1KB429qMbT6+AZI3b3CzQV1CY9sEYt31htuENQcWyzLCwAHiVEWcjNZ1TZIZr2mHY0lFGSPwlSV3ea9ZxY9jyzQpoYkCBnv4zGRrqp3RZEo7f13sCD6juqGJjSko27J/HclZk+ggoVPtw5Q8hQ3K6rg2gijK7sBFF2OMcyQCqAWL6t90DNM8w35u8jsrWemqFU7rTSUrSiRlDq5xQC1ZKdUOR4G6stx3EEtgx++5GYeLiKhzm7YHmzJIWu1wdquZXt1jNBayWy7srkhT4DElDbqEgxplSfJBt3YbWl/cQ50uwon7PbdV68qcuWueUQOfaqdx1hbRR1RScvkV+iN0ZrCCt+2YMyWy/sYFGlDJ79C5KggbfjRJswVYky5N/he1QjRVirpkEv0R74FEhHa/dMWHrppUsaXJh8tmwpJSWFsOTVauE9Cm8hkNO8r3Oufg9F9tmaJrrQO387oOs4Y1RJw/OCw1etMaIFehNjLQGTcSoamd68qyse1ISd1G3LY2EAax4iI9IStj1Rmx5RaXnNT7UT/cpEX3fFNQppUL3ueyW9P82HbExJUT/GxYgzyu9yLqbEbn9y4bRB8FeZxrv8HuNi5eXHsCvdFrOS9kNpGVtiJSD70rRYDr2AvGAzUOqcsDOpvE+GJMVHVLQRHWX61rVrqH08qK07pQicZFVtw2ksto1QDINaqigTBbLkkbdVkwNKwdhpkPBk+fvZUAAA5MSURBVEO8B7MnV6vT1g4sBgBS8bqwcGW1tFWDthU2GQiDSxLXIkacdUEjkRi6C7bOBh3Lhbsu2TPJwiFDV1LiSvDC4E7npo0dml2zpioVn2vdVRusj8d5WYFrfrbEjUtEqnw6G6DPcVU9Nl/HWGp6iS4mHjoi823P0M4NizElq8yiRYvquroa695+u6ln9epbessIgb5zK4QAqsGZDum5nAADgrEcdez5dxmR+j0nW+Y4d9jnDsb1aDA4NiegmJyK4mJq3+nmYAuqZW8vCHSZerLCtYKQm3LKkhKl9WkiPzWo6NqxUezYlMWH1WPStus6KA/Pc12Ddsw5puAKvEnNz0QO2va6pmqigd4Wp3A82xIBzMlV5SLp6OKGrstSkkwZkjETuZkwLpLVokWLat7Z7c3Ideem5vM9T2RHNDZc++KffrVk0oz/jTd/e9OLi/symZpvTzj8+gu3vX7S0T3vLjZ9Tx+4dOO6f3muftiNt4495HH4N70HroNxX6urXzWlt+d4+Buu0wmM91I58DpVnhveeG7d5ZOPnhHXuL61+aUrRuV6j6fj7MnUPv6tiUfcCJ/p5hP3mWm6n+oO5VKxhWsAE7QNk/y6sfBaiiPVZdrxBVk/2L37X96qbbgR/CKq7ug8bTihr6CPwLV+IAn8S/d89R6bjLZno6+69BwVA5vPw3fgizqMXfEF/RT+VmOP+kwOnknMzxY/Id6gPuG6SX29J9F5q/e69Au4+brT2KculoadH/qALd6qfuySWZWhvz+bNbYBzzjj/OHXvbbq/n2Z2u9cPeuoR+Dmb65d+80+r3Y5/r9tzdqH2mbPOh0Hbn9mzb7WY2c3qA+6au3zp8FncJ96D3yO3zfmeh/S3Y/jwb0gT63X10zloN+DPCAnfPadWbO+ExZ4zvUwfm0u/4/5TOaR/oz3yGA9hyPLYF8DumnI930T9Qz/B/zpnOEz0F13tu50tA2dXKr94DW6MdFOTDY12PMOMz7IGtcOqG3bbJdiiLiBL6B/6eQOg6FJR/B5Td47jcaDMBhFvZaDC7VRXXyBZ8Pn/t8kXulkQlu2xaGoc1HvU2UFjMGv6HxMsYzea5pzUnK6xuFgpsoYRWbroWC1BWNbJ2K38DQLuNxdb8VWlqHlMlQlPCqP0yZ0KboSvqctizgbHkybNmzrmJz1mPcbQ91mg7AyIQau98mpW9DhObafwnBtlFHlNO7AI+96DDu3ONdjDHId36Br6dq38jM2dKCcgAGnTR5nXnAvja+qD9BNC661yzT4iAszte0ZZfnESlaq4UbZY180gICkTMByhMfes+08ETzPtXEgrpFV2/107YqjJxM+tjUw3Tom9719+4M+TLuxdGSC61mutRoMiEhoHJxUHYUlO84zwlxDNwfZjm+4rsNE1nUEJIxsSVyL8VBNeFzrbPS+MPpNQuYoY6ibLKIQrPN1S3RQ3YYLdBxXdolbwW3ncDjZjM3odLtOogAr95QjgIuonIVYG37aXUuGajvuGyoqSY9hSEHXQTDZfpSg4NqBN5S4hum6QPUF57fSRkguf4DvdX4FerAm5sHP38T5fauh0mXJzsQI29ZBTidZFc9VWV5QycmAXS06VxlJK7S4AXOoFLQ/PQeDRpjzIbr5hyGrSgw+Q6FzXcJmqlrjklWU+5PEgFtxwjNNO+ySlCfpsWzzs32nOzqStGxJjxe3GnSSFe2d6spNG/vTybq2NyYNjIyXPAJJBC7dVnRTVc49mJ38TNM9oqm7oOon6pqqy+fTjU7lSWdL1E2+4Vq/TyMKg05WGFyML6hkLlxi5sd9jVEawRaZ4iOgVgDWjTnMtynEl6qyRjCRlW3BPswMuZsawowp1yaLALc9muxT443m4hLX6O7KCl8wSl50WlIxMXfOhCnnXULL95WNgOlQcWXP6v2Xni7K67ogXAnpOJW0/sOd3/5wXVJt+aHEAtdlXTteTTKxyAo2USTxhus4O8mGElR51uAjAITl/9QMvGVd+fmXwX/6/vsEbLfH2REriWVl2EelxVPXbm4X6k6yggGScAB/HGYV5hJavt9/EHDtIt1/Zjo0M0liXREkFb0Mjb7iPKUS42kcLmGTlezAi2NWcq8gIAgIAoKA7eiRCx0eWUXcF+96uHwvCAgCgoAgUD0IhDlPqKLCIqvqgVJmKggIAoKAIJBGBISs0qgVkUkQEAQEAUGgBAEhKzEIQUAQEAQEgdQjIGSVehWJgIKAICAICAJlZLVo0aL6mTNn9rW1teUEHkFAEBAEBAFBIA0IlJDVwoULG7r7hs+vz2ae3pv3RtXn+hrTIKTIIAgIAoKAIFC9COTzuYypDZhZtGhRtnqhkZkLAoKAICAIpAkBWbNKkzZEFkFAEBAEBAEtAkJWYhiCgCAgCAgCqUdAyCr1KhIBBQFBQBAQBISsxAYEAUFAEBAEUo+AkFXqVSQCCgKCgCAgCAhZiQ0IAoKAICAIpB4BIavUq0gEFAQEAUFAEBCyEhsQBAQBQUAQSD0CQlapV5EIKAgIAoKAICBkJTYgCAgCgoAgkHoEhKxSryIRUBAQBAQBQUDISmxAEBAEBAFBIPUICFmlXkUioCAgCAgCgoCQldiAICAICAKCQOoRELJKvYpEQEFAEBAEBAHtLwV7ntff1dXYWFOzrU8H0ZkHX3aaQCcICAKCgCAgCMRB4ME3f/wI9/4SsoKftN+2o29eNuetralpGNbfv69JN9DJkz5+0kFNhyzmPkSuEwQEAUFAEBAEVAR6+/Y+/ttX//lGFzK5ulrjLwW77pXvBQFBQBAQBASBIUNA1qyGDGp5kCAgCAgCgkBUBISsoiIn9wkCgoAgIAgMGQJCVkMGtTxIEBAEBAFBICoCQlZRkZP7BAFBQBAQBIYMASGrIYNaHiQICAKCgCAQFQErWX3kI+e24MBHDusp/jvqw1z39eczjV4+n6vJej2uayv5+1w+05DLezW12fy7lTwPjuyg04zn9WUzee2ZPc4YlXBNf85r8jKZfE0m310J8kaVMZfzsrmMN6w24+2OOkba73vh3fpOkDGf7x+Rr6npz+a8vWmXOY58/V5uuOfla2u8mq444wz2vamorNra2rKPPfZiU29v1+Rs1tvR39+wp7Pznj1gL4MNwBCPn2lpWTTcq89NznVn940aNWbL3LmTutva2nJDLMegP66lpaW2qalpTE/PsIm7duXeHDZse1dnZ+d+R1hgu6tXb2x8553tY+vq+nMjR/Z1zZkzZ89+qtNGz5s4oqYmM7KmZtuWnp6effurTjs7/zQsl/MOqhtd++6mF/q2P/vsPftjAp1ZuHBh/e5c04FN+eGNe/Z0bevuntC9evUtvYMeICI8IBVk1dJy9thMbfaMbL6mpz/rjcj2ey994AM1v7/nnnv6I8wptbfMm7eoafjw3Gn5fF9/Lldbk6nrq8/0Zx97+OH/eDu1QkcTLHPa6Z84si7jzfQyvV35XM3YTC6z+uGHf/1StOHSexfYbrY+Oy+bq63v7893Z2q9+lzvyAc6O+/cryqsRYsW1bzzTt+J2Wx2ai6T783ksrm+vp5nOjvvfXF/SypBp15NXUuNl+nL5XLZbDbz+qmnHrt6f0tAQKdvdfUdnfWyh+V7vXqvJje8b1/3A48++sBbafS4VJBVGoERmQQBQUCLAMSM/a3joZsoxsZqmGtFmLqQVUWoSYQUBAQBQaC6ERCyqm79y+wFAUFAEKgIBISsKkJNIqQgIAgIAtWNgJBVdetfZi8ICAKCQEUgIGRVEWoSIQUBQUAQqG4EhKyqW/8ye0FAEBAEKgIBIauKUJMIKQgIAoJAdSMgZFXd+pfZCwKCgCBQEQgIWVWEmkRIQUAQEASqGwEhq+rWv8xeEBAEBIGKQEDIqiLUJEIKAoKAIFDdCAhZVbf+ZfaCgCAgCFQEAkJWFaEmEVIQEAQEgepGQMiquvUvsxcEBAFBoCIQELKqCDWJkIKAICAIVDcCQlbVrX+ZvSAgCAgCFYGAkFVFqEmEFAQEAUGguhEQsqpu/cvsBQFBQBCoCASErCpCTSKkICAICALVjYCQVXXrX2YvCAgCgkBFICBkVRFqEiEFAUFAEKhuBISsqlv/MntBQBAQBCoCASGrilCTCCkICAKCQHUjIGRV3fqX2QsCgoAgUBEICFlVhJpESEFAEBAEqhsBIavq1r/MXhAQBASBikBAyKoi1CRCCgKCgCBQ3QgIWVW3/mX2goAgIAhUBAJCVhWhJhFSEBAEBIHqRkDIqrr1L7MXBAQBQaAiEBCyqgg1iZCCgCAgCFQ3AkJW1a1/mb0gIAgIAhWBgJBVRahJhBQEBAFBoLoRELKqbv3L7AUBQUAQqAgEhKwqQk0ipCAgCAgC1Y2AkFV1619mLwgIAoJARSAgZFURahIhBQFBQBCobgSErKpb/zJ7QUAQEAQqAgEhq4pQkwgpCAgCgkB1IyBkVd36l9kLAoKAIFARCAhZVYSaREhBQBAQBKobASGr6ta/zF4QEAQEgYpAQMiqItQkQgoCgoAgUN0ICFlVt/5l9oKAICAIVAQCQlYVoSYRUhAQBASB6kZAyKq69S+zFwQEAUGgIhAQsqoINYmQgoAgIAhUNwJCVtWtf5m9ICAICAIVgYCQVUWoSYQUBAQBQaC6ERCyqm79y+wFAUFAEKgIBISsKkJNIqQgIAgIAtWNgJBVdetfZi8ICAKCQEUgIGRVEWoSIQUBQUAQqG4EhKyqW/8ye0FAEBAEKgIBIauKUJMIKQgIAoJAdSMgZFXd+pfZCwKCgCBQEQgIWVWEmkRIQUAQEASqGwEhq+rWv8xeEBAEBIGKQEDIqiLUJEIKAoKAIFDdCAhZVbf+ZfaCgCAgCFQEAkJWFaEmEVIQEAQEgepG4P8Dq19GAyfp2RMAAAAASUVORK5CYII="
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.FunctionName) or dimensions.FunctionName = parse_json("null")) and (is_null(dimensions.Resource) or dimensions.Resource = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSLambdaInvocationssum_sum:sum(m("AWS/Lambda/Invocations.sum"))
                    aggregate A_AWSLambdaInvocationssum_sum:sum(A_AWSLambdaInvocationssum_sum), group_by(string(dimensions.FunctionName))
                EOT
      },
      {
        id = "stage-gxi83vt0"
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
            tableWidth = 3020
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 5
          inputList     = []
          isInternal    = false
          label         = "Errors"
          managers = [
            {
              id         = "kkq0g7m0"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    logScale = {
                      use = true
                    }
                    unit    = ""
                    visible = true
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
            wantBuckets = 150
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-7i1w8jlb"
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
                              visible = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              logScale = {
                                use = true
                              }
                              unit    = ""
                              visible = true
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
                              columnId   = "Resource"
                              columnType = "link"
                              filterVerb = "filter"
                              foreignKey = {
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
                                targetDataset    = local.resources
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              values = [
                                {
                                  isExcluding = true
                                  value       = null
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterLinkValues"
                          },
                          {
                            params = {
                              checkedKeys = [
                                "Resource",
                              ]
                              columnId             = "dimensions"
                              columnType           = "object"
                              differentPathsUseAnd = true
                              expandedKeys = [
                                "Resource",
                              ]
                              filterVerb = "filter"
                              paths = {
                                Resource = true
                              }
                              valuesForPath = {}
                            }
                            summary = null
                            type    = "FilterJSONKey"
                          },
                          {
                            params = {
                              columnId   = "Resource"
                              columnType = "link"
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
                                targetDataset    = local.resources
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                "input-parameter-xmyuiu01",
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
                            id   = "dimensions"
                            path = "FunctionName"
                          },
                        ]
                        id             = "metricExpression-qbpc9all"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-03-27T21:32:00Z"
                            tags = [
                              {
                                column = "account_id"
                                path   = ""
                              },
                              {
                                column = "region"
                                path   = ""
                              },
                              {
                                column = "resourceId"
                                path   = ""
                              },
                              {
                                column = "service"
                                path   = ""
                              },
                              {
                                column = "unit"
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
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_AWSLambdaErrorssum_sum"
                        viewTab        = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-b7csh7xn"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-qbpc9all",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-buvs8da4"
              index         = 1
              isPinned      = false
              opal = [
                "filter not is_null(label(^Resource))",
                "filter ((is_null(dimensions.Resource) or dimensions.Resource = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSLambdaErrorssum_sum:sum(m(\"AWS/Lambda/Errors.sum\"))",
                "aggregate A_AWSLambdaErrorssum_sum:sum(A_AWSLambdaErrorssum_sum), group_by(string(dimensions.FunctionName))",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,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"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter not is_null(label(^Resource))
                    filter ((is_null(dimensions.Resource) or dimensions.Resource = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSLambdaErrorssum_sum:sum(m("AWS/Lambda/Errors.sum"))
                    aggregate A_AWSLambdaErrorssum_sum:sum(A_AWSLambdaErrorssum_sum), group_by(string(dimensions.FunctionName))
                EOT
      },
      {
        id = "stage-53541vr3"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/EC2/CPUUtilizationsum_from_AWS-Quickstart/Metrics"
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
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/EC2/CPUUtilizationcount_from_AWS-Quickstart/Metrics"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
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
            tableWidth = 1459
            viewType   = "Compact"
          }
          disableOutput = false
          index         = 6
          inputList     = []
          isInternal    = false
          label         = "Avg. CPU Utilization"
          managers = [
            {
              id         = "1oyw1z2j"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  color         = "Default"
                  hideGridLines = false
                  legend = {
                    type    = "list"
                    visible = false
                  }
                  type = "xy"
                  xConfig = {
                    visible = true
                  }
                  yConfig = {
                    logScale = {
                      use = true
                    }
                    unit    = "percent (0-100)"
                    visible = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "C_formula"
                  }
                  topK = {
                    type = "Auto"
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
            wantBuckets = 150
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-30h3gp2d"
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
                              type    = "list"
                              visible = true
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
                              y             = "A_AWSEC2CPUUtilizationsum_sum"
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
                                targetDataset    = local.resources
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                "input-parameter-xmyuiu01",
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                          {
                            params = {
                              checkedKeys          = []
                              columnId             = "dimensions"
                              columnType           = "object"
                              differentPathsUseAnd = true
                              expandedKeys         = []
                              filterVerb           = "filter"
                              paths = {
                                InstanceId = false
                              }
                              valuesForPath = {}
                            }
                            summary = null
                            type    = "FilterJSONKey"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            id   = "dimensions"
                            path = "InstanceId"
                          },
                        ]
                        id             = "metricExpression-1204imuj"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate    = "sum"
                          datasetId    = local.metrics
                          description  = "Auto Detected Metric"
                          name         = "AWS/EC2/CPUUtilization.sum"
                          nameWithPath = "AWS/EC2/CPUUtilization.sum (AWS-Quickstart/Metrics)"
                          rollup       = "sum"
                          type         = "gauge"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "A_AWSEC2CPUUtilizationsum_sum"
                        viewTab        = "visualize"
                      },
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
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "B_AWSEC2CPUUtilizationcount_sum"
                            }
                            topK = {
                              order = "Top"
                              type  = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        expressionIdentifier = "B"
                        filterActions = [
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
                                targetDataset    = local.resources
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                "input-parameter-xmyuiu01",
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                          {
                            params = {
                              checkedKeys          = []
                              columnId             = "dimensions"
                              columnType           = "object"
                              differentPathsUseAnd = true
                              expandedKeys         = []
                              filterVerb           = "filter"
                              paths = {
                                InstanceId = false
                              }
                              valuesForPath = {}
                            }
                            summary = null
                            type    = "FilterJSONKey"
                          },
                        ]
                        frameDuration = {
                          num  = 2
                          unit = "minute"
                        }
                        groupBy = [
                          {
                            id   = "dimensions"
                            path = "InstanceId"
                          },
                        ]
                        id             = "metricExpression-huh6k7q5"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate    = "sum"
                          datasetId    = local.metrics
                          description  = "Auto Detected Metric"
                          name         = "AWS/EC2/CPUUtilization.count"
                          nameWithPath = "AWS/EC2/CPUUtilization.count (AWS-Quickstart/Metrics)"
                          rollup       = "sum"
                          type         = "gauge"
                        }
                        showAlignment  = false
                        showResolution = false
                        summaryMode    = "over-time"
                        type           = "metricExpression"
                        valueColumnId  = "B_AWSEC2CPUUtilizationcount_sum"
                        viewTab        = "visualize"
                      },
                      {
                        dataVis = {
                          config = {
                            color         = "Default"
                            hideGridLines = false
                            legend = {
                              type    = "list"
                              visible = false
                            }
                            type = "xy"
                            xConfig = {
                              visible = true
                            }
                            yConfig = {
                              logScale = {
                                use = true
                              }
                              unit    = "percent (0-100)"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "C_formula"
                            }
                            topK = {
                              type = "Auto"
                            }
                            type = "table"
                          }
                          type = "timeseries"
                        }
                        expressionIdentifier = "C"
                        filterActions        = []
                        formula              = "A/B"
                        id                   = "formulaExpression-qmps5f6a"
                        lookupActions        = []
                        type                 = "formulaExpression"
                        valueColumnId        = "C_formula"
                        viewTab              = "visualize"
                      },
                    ]
                    multiExpression = {
                      dataVis = {
                        config = {
                          color         = "Default"
                          hideGridLines = false
                          legend = {
                            showNullAsOption = "Hidden"
                            type             = "list"
                            visible          = true
                          }
                          type = "xy"
                          xConfig = {
                            visible = true
                          }
                          yConfig = {
                            visible = true
                          }
                        }
                        source = {
                          table = {
                            transformType = "none"
                            type          = "xy"
                            x             = "valid_from"
                            y             = "value"
                          }
                          topK = {
                            k    = 200
                            type = "Custom"
                          }
                          type = "table"
                        }
                        type = "timeseries"
                      }
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-jfvy87st"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "formulaExpression-qmps5f6a",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-3cpr4zsk"
              index         = 1
              isPinned      = false
              opal = [
                "@A <- @\"AWS/EC2/CPUUtilizationsum_from_AWS-Quickstart/Metrics\" {",
                "    exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "    filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json(\"null\")))",
                "    align A_AWSEC2CPUUtilizationsum_sum:sum(m(\"AWS/EC2/CPUUtilization.sum\"))",
                "    aggregate A_AWSEC2CPUUtilizationsum_sum:sum(A_AWSEC2CPUUtilizationsum_sum), group_by(string(dimensions.InstanceId))",
                "}",
                "@B <- @\"AWS/EC2/CPUUtilizationcount_from_AWS-Quickstart/Metrics\" {",
                "    exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "    filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json(\"null\")))",
                "    align B_AWSEC2CPUUtilizationcount_sum:sum(m(\"AWS/EC2/CPUUtilization.count\"))",
                "    aggregate B_AWSEC2CPUUtilizationcount_sum:sum(B_AWSEC2CPUUtilizationcount_sum), group_by(string(dimensions.InstanceId))",
                "}",
                "@C <- @A {",
                "    union @B",
                "    aggregate A: any_not_null(A_AWSEC2CPUUtilizationsum_sum), B: any_not_null(B_AWSEC2CPUUtilizationcount_sum), group_by(InstanceId)",
                "    make_col C_formula: A/B",
                "}",
                "<- @C {}",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,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"
          }
        }
        params   = null
        pipeline = <<-EOT
                    @A <- @"AWS/EC2/CPUUtilizationsum_from_AWS-Quickstart/Metrics" {
                        exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                        filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json("null")))
                        align A_AWSEC2CPUUtilizationsum_sum:sum(m("AWS/EC2/CPUUtilization.sum"))
                        aggregate A_AWSEC2CPUUtilizationsum_sum:sum(A_AWSEC2CPUUtilizationsum_sum), group_by(string(dimensions.InstanceId))
                    }
                    @B <- @"AWS/EC2/CPUUtilizationcount_from_AWS-Quickstart/Metrics" {
                        exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                        filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json("null")))
                        align B_AWSEC2CPUUtilizationcount_sum:sum(m("AWS/EC2/CPUUtilization.count"))
                        aggregate B_AWSEC2CPUUtilizationcount_sum:sum(B_AWSEC2CPUUtilizationcount_sum), group_by(string(dimensions.InstanceId))
                    }
                    @C <- @A {
                        union @B
                        aggregate A: any_not_null(A_AWSEC2CPUUtilizationsum_sum), B: any_not_null(B_AWSEC2CPUUtilizationcount_sum), group_by(InstanceId)
                        make_col C_formula: A/B
                    }
                    <- @C {}
                EOT
      },
      {
        id = "stage-z3k16jr6"
        input = [
          {
            datasetId   = local.resources
            datasetPath = null
            inputName   = "AWS-Quickstart/AWS Asset Inventory"
            inputRole   = "Data"
            stageId     = null
          },
        ]
        layout = {
          disableOutput = false
          index         = 7
          inputList = [
            {
              datasetId   = local.resources
              id          = "query-input-5bg7myts"
              inputName   = "AWS-Quickstart/AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
            },
          ]
          isInternal = true
          managers   = []
          queryPresentation = {
            columnStats = {
              histogramBucketCount = "0"
              maxNbHistograms      = "0"
              needDistinctCount    = true
              topKCount            = "100"
            }
            initialRollupFilter = {
              mode = "Last"
            }
            linkify     = true
            progressive = true
            resultKinds = [
              "ResultKindSchema",
              "ResultKindColumnStats",
            ]
            rollup = {}
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS-Quickstart/AWS Asset Inventory"
              id            = "step-4zd4ez3w"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              action = {
                params = {
                  disabled = false
                  hint     = "#hint{skipExistsNoFilter:true}"
                }
                summary = null
                type    = "Hint"
              }
              customSummary = ""
              id            = "step-0ie5g080"
              index         = 1
              isPinned      = false
              opal = [
                "#hint{skipExistsNoFilter:true}",
              ]
              type = "unknown"
            },
          ]
          type             = "table"
          usageDescription = "Filtered Dataset Controlled Filter Stage"
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
            stageTab      = "table"
          }
        }
        params   = null
        pipeline = "#hint{skipExistsNoFilter:true}"
      },
      {
        id = "stage-ned8ibcl"
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
          dataTableViewState = {
            cellValuePresentation = []
            columnOrderOverride = [
              [
                0,
                "Name",
              ],
            ]
            columnVisibility = []
            columnWidths = [
              [
                "AccountID",
                137,
              ],
              [
                "Name",
                318,
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
            tableWidth = 2161
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 8
          inputList = [
            {
              id          = "query-input-te2p90wz"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-xmyuiu01"
            },
          ]
          isInternal = false
          label      = "Resources"
          managers   = []
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
              "ResultKindData",
              "ResultKindVolumeStats",
              "ResultKindColumnStats",
              "ResultKindProgress",
            ]
            rollup = {}
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS Asset Inventory"
              id            = "step-0lgmbx8w"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-3267hx0y"
              index         = 1
              isPinned      = false
              opal = [
                "",
              ]
              type = "unknown"
            },
            {
              action = {
                params = {
                  columnId   = "AccountID"
                  columnType = "string"
                  parameterFilters = [
                    "accountId",
                  ]
                }
                summary = null
                type    = "FilterParameter"
              }
              customSummary = "Filter by Account"
              id            = "step-8ol9httq"
              index         = 2
              isPinned      = false
              opal          = []
              type          = "unknown"
            },
            {
              action = {
                params = {
                  columnId   = "Region"
                  columnType = "string"
                  parameterFilters = [
                    "region",
                  ]
                }
                summary = null
                type    = "FilterParameter"
              }
              customSummary = "Filter by Region"
              id            = "step-zu2vm4gy"
              index         = 3
              isPinned      = false
              opal          = []
              type          = "unknown"
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
            stageTab      = "table"
            thumbnailTableData = {
              rows = [
                [
                  "accesspoint/160024990118",
                  "723346149663",
                  "us-west-2",
                  "S3",
                  "AccessPoint",
                  "160024990118",
                  "arn:aws:s3:us-west-2:723346149663:accesspoint/160024990118",
                  "{\"Alias\":\"160024990118-o7gw5xwz7uscz9h36s9a4rjso3zgqusw2a-s3alias\",\"Arn\":\"arn:aws:s3:us-west-2:72334",
                  null,
                ],
                [
                  "accesspoint/134984170396",
                  "723346149663",
                  "us-west-2",
                  "S3",
                  "AccessPoint",
                  "134984170396",
                  "arn:aws:s3:us-west-2:723346149663:accesspoint/134984170396",
                  "{\"Alias\":\"134984170396-kiz6tha5zoabuu3hb18pm9sq1zexwusw2a-s3alias\",\"Arn\":\"arn:aws:s3:us-west-2:72334",
                  null,
                ],
                [
                  "accesspoint/136687556882",
                  "723346149663",
                  "us-west-2",
                  "S3",
                  "AccessPoint",
                  "136687556882",
                  "arn:aws:s3:us-west-2:723346149663:accesspoint/136687556882",
                  "{\"Alias\":\"136687556882-zixqbx8u83fo8eg7zrdingmsts3oqusw2a-s3alias\",\"Arn\":\"arn:aws:s3:us-west-2:72334",
                  null,
                ],
                [
                  "accesspoint/189331567332",
                  "723346149663",
                  "us-west-2",
                  "S3",
                  "AccessPoint",
                  "189331567332",
                  "arn:aws:s3:us-west-2:723346149663:accesspoint/189331567332",
                  "{\"Alias\":\"189331567332-6e3jjb9dymshbu73kitxz7u5rsbj6usw2a-s3alias\",\"Arn\":\"arn:aws:s3:us-west-2:72334",
                  null,
                ],
                [
                  "accesspoint/146113853253",
                  "723346149663",
                  "us-west-2",
                  "S3",
                  "AccessPoint",
                  "146113853253",
                  "arn:aws:s3:us-west-2:723346149663:accesspoint/146113853253",
                  "{\"Alias\":\"146113853253-x84tee6addz6shje1owxqzuifcarsusw2a-s3alias\",\"Arn\":\"arn:aws:s3:us-west-2:72334",
                  null,
                ],
                [
                  "accesspoint/194158980710",
                  "723346149663",
                  "us-west-2",
                  "S3",
                  "AccessPoint",
                  "194158980710",
                  "arn:aws:s3:us-west-2:723346149663:accesspoint/194158980710",
                  "{\"Alias\":\"194158980710-uqzpywgejspz4h8g68fneitgtzm7qusw2a-s3alias\",\"Arn\":\"arn:aws:s3:us-west-2:72334",
                  null,
                ],
                [
                  "accesspoint/199850250328",
                  "723346149663",
                  "us-west-2",
                  "S3",
                  "AccessPoint",
                  "199850250328",
                  "arn:aws:s3:us-west-2:723346149663:accesspoint/199850250328",
                  "{\"Alias\":\"199850250328-qjgnxm9apnsbqtzrxd9sg6js7tn4wusw2a-s3alias\",\"Arn\":\"arn:aws:s3:us-west-2:72334",
                  null,
                ],
                [
                  "accesspoint/102541448503",
                  "723346149663",
                  "us-west-2",
                  "S3",
                  "AccessPoint",
                  "102541448503",
                  "arn:aws:s3:us-west-2:723346149663:accesspoint/102541448503",
                  "{\"Alias\":\"102541448503-3ct67dqchtebkkp3k3uog8bopb1m4usw2a-s3alias\",\"Arn\":\"arn:aws:s3:us-west-2:72334",
                  null,
                ],
                [
                  "accesspoint/112179436041",
                  "723346149663",
                  "us-west-2",
                  "S3",
                  "AccessPoint",
                  "112179436041",
                  "arn:aws:s3:us-west-2:723346149663:accesspoint/112179436041",
                  "{\"Alias\":\"112179436041-ucre3kbz4gpm4o8gb6ao17k5gqwoqusw2a-s3alias\",\"Arn\":\"arn:aws:s3:us-west-2:72334",
                  null,
                ],
                [
                  "accesspoint/162906048606",
                  "723346149663",
                  "us-west-2",
                  "S3",
                  "AccessPoint",
                  "162906048606",
                  "arn:aws:s3:us-west-2:723346149663:accesspoint/162906048606",
                  "{\"Alias\":\"162906048606-6dkc6fw9ihnons5rgaeogr4pi7iwkusw2a-s3alias\",\"Arn\":\"arn:aws:s3:us-west-2:72334",
                  null,
                ],
              ]
              schema = [
                {
                  id           = "Name"
                  isLabelField = true
                  type         = "string"
                  width        = 318
                },
                {
                  id    = "AccountID"
                  type  = "string"
                  width = 137
                },
                {
                  id    = "Region"
                  type  = "string"
                  width = 103.10000000000001
                },
                {
                  id    = "Service"
                  type  = "string"
                  width = 102.19999999999999
                },
                {
                  id    = "ServiceSubType"
                  type  = "string"
                  width = 221.60000000000002
                },
                {
                  id    = "ID"
                  type  = "string"
                  width = 458.6
                },
                {
                  id    = "ARN"
                  type  = "string"
                  width = 600
                },
                {
                  id    = "Configuration"
                  type  = "object"
                  width = 600
                },
                {
                  id    = "Tags"
                  type  = "object"
                  width = 600
                },
              ]
            }
          }
        }
        params   = null
        pipeline = ""
      },
      {
        id = "stage-sefl96qa"
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
          label         = "EC2 Instances"
          managers = [
            {
              id         = "1vwh7n83"
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
                  singleStatLabel = "EC2 Instances"
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
            rollup = {}
            sort = [
              {
                ascending  = true
                columnName = "A_AWSAssetInventory_count_distinct_exact"
              },
            ]
            wantBuckets = 150
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-3m9s6kid"
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
                            singleStatLabel = "EC2 Instances"
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
                        filterActions = [
                          {
                            params = {
                              columnId   = "Service"
                              columnType = "string"
                              filterVerb = "ever"
                              values = [
                                {
                                  isExcluding = false
                                  value       = "EC2"
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
                                  value       = "Instance"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        groupBy = []
                        id      = "datasetQueryExpression-zitoeyj4"
                        inputSource = {
                          parameterId = "input-parameter-xmyuiu01"
                        }
                        invalidGroupBy  = []
                        lookupActions   = []
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_AWSAssetInventory_count_distinct_exact"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-mj45rpkz"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zitoeyj4",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-vf7qgibp"
              index         = 1
              isPinned      = false
              opal = [
                "ever Service = \"EC2\"",
                "ever ServiceSubType = \"Instance\"",
                "statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,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"
          }
        }
        params   = null
        pipeline = <<-EOT
                    ever Service = "EC2"
                    ever ServiceSubType = "Instance"
                    statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()
                EOT
      },
      {
        id = "stage-swkapwx3"
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
          label         = "S3 Buckets"
          managers = [
            {
              id         = "f93xuoyt"
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
                  singleStatLabel = "S3 Buckets"
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
            rollup = {}
            sort = [
              {
                ascending  = true
                columnName = "A_AWSAssetInventory_count_distinct_exact"
              },
            ]
            wantBuckets = 150
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-1haah2dw"
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
                            singleStatLabel = "S3 Buckets"
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
                        filterActions = [
                          {
                            params = {
                              columnId   = "Service"
                              columnType = "string"
                              filterVerb = "ever"
                              values = [
                                {
                                  isExcluding = false
                                  value       = "S3"
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
                                  value       = "Bucket"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        groupBy = []
                        id      = "datasetQueryExpression-zitoeyj4"
                        inputSource = {
                          parameterId = "input-parameter-xmyuiu01"
                        }
                        invalidGroupBy  = []
                        lookupActions   = []
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_AWSAssetInventory_count_distinct_exact"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-mj45rpkz"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zitoeyj4",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-bilpyxsx"
              index         = 1
              isPinned      = false
              opal = [
                "ever Service = \"S3\"",
                "ever ServiceSubType = \"Bucket\"",
                "statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,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"
          }
        }
        params   = null
        pipeline = <<-EOT
                    ever Service = "S3"
                    ever ServiceSubType = "Bucket"
                    statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()
                EOT
      },
      {
        id = "stage-ojrm18v1"
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
          index         = 11
          inputList     = []
          isInternal    = false
          label         = "Lambda Functions"
          managers = [
            {
              id         = "3o9srz0c"
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
                  singleStatLabel = "Lambda Functions"
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
            rollup = {}
            sort = [
              {
                ascending  = true
                columnName = "A_AWSAssetInventory_count_distinct_exact"
              },
            ]
            wantBuckets = 150
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-4vb1smh3"
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
                            singleStatLabel = "Lambda Functions"
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
                        filterActions = [
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
                        groupBy = []
                        id      = "datasetQueryExpression-zitoeyj4"
                        inputSource = {
                          parameterId = "input-parameter-xmyuiu01"
                        }
                        invalidGroupBy  = []
                        lookupActions   = []
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_AWSAssetInventory_count_distinct_exact"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-mj45rpkz"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zitoeyj4",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-sp3484gq"
              index         = 1
              isPinned      = false
              opal = [
                "ever Service = \"Lambda\"",
                "ever ServiceSubType = \"Function\"",
                "statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAasAAADwCAYAAAC+L0vtAAAAAXNSR0IArs4c6QAAIABJREFUeF7t3Xe8FNX5x/EH6dK7giICCkgRsYBYMMbEGJUXP+wN1ChVer30S7vSLyCCdBHFLho1WKImMf4SY1RUpAqKAgrSxBpaXs+QGWb3zu7dYWfmnr185i/YnZ1z5n3One/OzJmzRaTZaYeFBQEEEEAAAYMFihBWBrcOVUMAAQQQsAQIKzoCAggggIDxAoSV8U1EBRFAAAEECCv6AAIIIICA8QKElfFNRAURQAABBAgr+gACCCCAgPEChJXxTUQFEUAAAQQIK/oAAggggIDxAoSV8U1EBRFAAAEECCv6AAIIIICA8QKElfFNRAURQAABBAgr+gACCCCAgPEChJXxTUQFEUAAAQQIK/oAAggggIDxAoSV8U1EBRFAAAEECCv6AAIIIICA8QKElfFNRAURQAABBAgr+gACCCCAgPEChJXxTUQFEUAAAQQIK/oAAggggIDxAoSV8U1EBRFAAAEECCv6AAIIIICA8QKElfFNRAURQAABBAgr+gACCCCAgPEChJXxTUQFEUAAAQQIK/oAAggggIDxAoSV8U1EBRFAAAEECCv6AAIIIICA8QKElfFNRAURQAABBAgr+gACCCCAgPEChJXxTUQFEUAAAQQIK/oAAggggIDxAoSV8U1EBRFAAAEECCv6AAIIIICA8QKElfFNRAURQAABBAgr+gACCCCAgPEChJXxTUQFEUAAAQQIK/oAAggggIDxAoSV8U1EBRFAAAEECCv6AAIIIICA8QKElfFNRAURQAABBAgr+gACCCCAgPEChJXxTUQFEUAAAQQIK/oAAggggIDxAoSV8U1EBRFAAAEECCv6AAIIIICA8QKElfFNRAURQAABBAgr+gACCCCAgPEChJXxTUQFEUAAAQQIK/oAAggggIDxAoSV8U1EBRFAAAEECCv6AAIIIICA8QKElfFNRAURQAABBAgr+gACCCCAgPEChJXxTUQFEUAAAQQIK/oAAggggIDxAoSV8U1EBRFAAAEECCv6AAIIIICA8QKElfFNRAURQAABBAgr+gACCCCAgPEChJXxTUQFEUAAAQQIK/oAAggggIDxAoSV8U1EBRFAAAEECCv6AAIIIICA8QKElfFNRAURQAABBAgr+gACCCCAgPEChJXx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"
          }
        }
        params   = null
        pipeline = <<-EOT
                    ever Service = "Lambda"
                    ever ServiceSubType = "Function"
                    statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()
                EOT
      },
      {
        id = "stage-3ydx5fyq"
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
          index         = 12
          inputList     = []
          isInternal    = false
          label         = "ECS Clusters"
          managers = [
            {
              id         = "r3cx4icc"
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
                  singleStatLabel = "ECS Clusters"
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
            rollup = {}
            sort = [
              {
                ascending  = true
                columnName = "A_AWSAssetInventory_count_distinct_exact"
              },
            ]
            wantBuckets = 150
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-hu0x0h25"
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
                            singleStatLabel = "ECS Clusters"
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
                        filterActions = [
                          {
                            params = {
                              columnId   = "Service"
                              columnType = "string"
                              filterVerb = "ever"
                              values = [
                                {
                                  isExcluding = false
                                  value       = "ECS"
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
                                  value       = "Cluster"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        groupBy = []
                        id      = "datasetQueryExpression-zitoeyj4"
                        inputSource = {
                          parameterId = "input-parameter-xmyuiu01"
                        }
                        invalidGroupBy  = []
                        lookupActions   = []
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_AWSAssetInventory_count_distinct_exact"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-mj45rpkz"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zitoeyj4",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-e4yztjuy"
              index         = 1
              isPinned      = false
              opal = [
                "ever Service = \"ECS\"",
                "ever ServiceSubType = \"Cluster\"",
                "statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,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"
          }
        }
        params   = null
        pipeline = <<-EOT
                    ever Service = "ECS"
                    ever ServiceSubType = "Cluster"
                    statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()
                EOT
      },
      {
        id = "stage-ednorf95"
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
          index         = 13
          inputList     = []
          isInternal    = false
          label         = "EKS Clusters"
          managers = [
            {
              id         = "o93d3zbh"
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
                  singleStatLabel = "EKS Clusters"
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
            rollup = {}
            sort = [
              {
                ascending  = true
                columnName = "A_AWSAssetInventory_count_distinct_exact"
              },
            ]
            wantBuckets = 150
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-a31gtzlc"
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
                            singleStatLabel = "EKS Clusters"
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
                        filterActions = [
                          {
                            params = {
                              columnId   = "Service"
                              columnType = "string"
                              filterVerb = "ever"
                              values = [
                                {
                                  isExcluding = false
                                  value       = "EKS"
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
                                  value       = "Cluster"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        groupBy = []
                        id      = "datasetQueryExpression-zitoeyj4"
                        inputSource = {
                          parameterId = "input-parameter-xmyuiu01"
                        }
                        invalidGroupBy  = []
                        lookupActions   = []
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_AWSAssetInventory_count_distinct_exact"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-mj45rpkz"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zitoeyj4",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-bjyjcyde"
              index         = 1
              isPinned      = false
              opal = [
                "ever Service = \"EKS\"",
                "ever ServiceSubType = \"Cluster\"",
                "statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAasAAADwCAYAAAC+L0vtAAAAAXNSR0IArs4c6QAAIABJREFUeF7tnXd4VcXWhxcIAipdQEVRaYI0e0FARa5dPq/9Koh0QuglofcAoUNooUtRwIZYEBDEci1XRECUqnQQlY7UAN+zNp7NOSenhoTMzn7nHx7OmZm91rvmOb/MzJrZ2aTy9WeFAgEIQAACEDCYQDbEyuDoYBoEIAABCFgEECsGAgQgAAEIGE8AsTI+RBgIAQhAAAKIFWMAAhCAAASMJ4BYGR8iDIQABCAAAcSKMQABCEAAAsYTQKyMDxEGQgACEIAAYsUYgAAEIAAB4wkgVsaHCAMhAAEIQACxYgxAAAIQgIDxBBAr40OEgRCAAAQggFgxBiAAAQhAwHgCiJXxIcJACEAAAhBArBgDEIAABCBgPAHEyvgQYSAEIAABCCBWjAEIQAACEDCeAGJlfIgwEAIQgAAEECvGAAQgAAEIGE8AsTI+RBgIAQhAAAKIFWMAAhCAAASMJ4BYGR8iDIQABCAAAcSKMQABCEAAAsYTQKyMDxEGQgACEIAAYsUYgAAEIAAB4wkgVsaHCAMhAAEIQACxYgxAAAIQgIDxBBAr40OEgRCAAAQggFgxBiAAAQhAwHgCiJXxIcJACEAAAhBArBgDEIAABCBgPAHEyvgQYSAEIAABCCBWjAEIQAACEDCeAGJlfIgwEAIQgAAEECvGAAQgAAEIGE8AsTI+RBgIAQhAAAKIFWMAAhCAAASMJ4BYGR8iDIQABCAAAcSKMQABCEAAAsYTQKyMDxEGQgACEIAAYsUYgAAEIAAB4wkgVsaHCAMhAAEIQACxYgxAAAIQgIDxBBAr40OEgRCAAAQggFgxBiAAAQhAwHgCiJXxIcJACEAAAhBArBgDEIAABCBgPAHEyvgQYSAEIAABCCBWjAEIQAACEDCeAGJlfIgwEAIQgAAEECvGAAQgAAEIGE8AsTI+RBgIAQhAAAKIFWMAAhCAAASMJ4BYGR8iDIQABCAAAcSKMQABCEAAAsYTQKyMDxEGQgACEIAAYsUYgAAEIAAB4wkgVsaHCAMhAAEIQACxYgxAAAIQgIDxBBAr40OEgRCAAAQggFgxBiAAAQhAwHgCiJXxIcJACEAAAhBArBgDEIAABCBgPAHEyvgQYSAEIAABCCBWjAEIQAACEDCeAGJlfIgwEAIQgAAEECvGAAQgAAEIGE8AsTI+RBgIAQhAAAKIFWMAAhCAAASMJ4BYGR8iDIQABCAAAcSKMQABCEAAAsYTQKyMDxEGQgACEIAAYsUYgAAEIAAB4wkgVsaHCAMhAAEIQACxYgxAAAIQgIDxBBAr40OEgRCAAAQggFgxBiAAAQhAwHgCiJXxIcJACEAAAhBArBgDEIAABCBgPAHEyvgQYSAEIAABCCBWjAEIQAACEDCeAGJlfIgwEAIQgAAEECvGAAQgAAEIGE8AsTI+RBgIAQhAAAKIFWMAAhCAAASMJ4BYGR8iDIQABCAAAcSKMQABCEAAAsYTQKyMDxEGQgACEIAAYsUYgAAEIAAB4wkgVsaHCANNJnBprkvlvgfvlxtKlZIChQpI3nz5JFeuXHL8+HE5fOiwHNy/X1YtXyErv/9Bzpw5Y7Ir2AYBowkgVkaHB+NMJVDriUflX08+LgULF5Js2bKFNfPs2bOya/sOeX38JNm8cVPY+lSAAAR8CSBWjAgIREGg0m23yGvNm0i+/PmjaOVbdcum32RY3wFy7OjRNPdBQwi4jQBi5baI42+aCTz1/DNS+4Vn09zeu+HxY8elX3w32bN7d7r0RycQyOoEEKusHmH8SxcCrzZrJNUfejBd+vJ0kpKSIl1atJX9e/ela790BoGsSACxyopRxad0JfDQ44/IS/VfTdc+PZ0d2Ldf4pq1FN3TokAAAsEJIFaMDgiEIFCkWFFJSBoWcRLF30f+lqNHjkiBQoVEMwUjKV98ulRmJE+OpCp1IOBaAoiVa0OP45EQSBg1VIpefVXIqvv27pWJI0bLr+s3+syQ8hcsILFx7eTG0qVCtj99+rS0qNtQUk6disQk6kDAlQQQK1eGHacjIaAi02VAn5BV9QzVmEHDQi7jNWodK3dXqxqyn4XzP5S3Z7wZiVnUgYArCSBWrgw7TkdCoHNCbylZtnTQqssWLpZZk6ZF0pW0695ZyleuGLTu3j//kk7NW0fUF5Ug4EYCiJUbo47PYQnoQd/kOTOC7lVpJl+LOg1El/AiKYWuLCwDx44M2p8mWDR9sS6JFpHApI4rCSBWrgw7TocjUPGWKtK6a1zQaks+Xiizp04P143P9+17dpVyFW8O2mZo7wRZt+aXqPqkMgTcQgCxckuk8TMqAvVimki1mvcHbHPm9GmJTUNCRLmKFaR9zy5B7Zg5cYp8vmhJVHZSGQJuIYBYuSXS+BkVgV5DB0rxEtcFbLPvr70SH9Mqqv60cp48eWTU9ElB23349nvy/py3o+6XBhBwAwHEyg1RxseoCSSOHyWFChcO2E4vou3fpWfUfWqDCXNnBt23+nzxEpk5YUqa+qURBLI6AcQqq0cY/9JEYOS0CXLZ5ZcHbPv919/KhOFJaeo3afpkyZ0nd8C2SxcslDenRLcPliYjaAQBBxJArBwYNEzOeAJjZk4NegPFB2+9K/PnvpMmI0bPnGK97ypQYc8qTUhp5BICiJVLAo2b0RGoUaumXHdDiYCNlixYJL/v3BVdh//UDrUMqEuLvOsqTVhp5AICiJULgoyLZhAIl2DR/OXX5BRXLpkRLKwwjgBiZVxIMCirEnj06afk2VdeCuie3gsY8/JrWdV1/ILABRNArC4YIR1AIDICfUYMkquLFw9Y+ZfVP8nwvgMj64haEHAhAcTKhUHH5YtPIFfu3JI0fVLQtPUR/QbKz6t+uviG8UQIOIQAYuWQQGGmswk0adNC7rzv3oBOnDxxUmLr1He2g1gPgQwmgFhlMGC6h0DBwoUkcdyooLOqld//YL1mhAIBCAQngFgxOiCQwQTi+vSQMuVvCvgUvW29c2xb2fvnnxlsBd1DwNkEECtnxw/rDSdQoUoladOtU1ArV//woyQNHGK4F5gHgcwngFhlfgywIIsSyJkzpwyfmhz0xgqdVbVrGCNHDh/OogRwCwLpRwCxSj+W9AQBHwLh3g789bIvZeqY8VCDAAQiIIBYRQCJKhCIlsBd1apK49axQZvpG4Zb1WskmglIgQAEwhNArMIzogYEoiKQN18+GZScJDly5AjabnryJPny08+i6pfKEHAzAcTKzdHH9wwhkJA0TIpeVSxo35vWbZDE7r0z5Nl0CoGsSgCxyqqRxa9MIVAvprFUq/lA0GfrRbXtG8bIsWPHMsU+HgoBpxJArJwaOew2jsCtd90hzTu2DWmXHv7VQ8AUCEAgOgKIVXS8qA2BgATyFywgA8eODLlPtWr5ChmdOBSCEIBAGgggVmmARhMI+BMYOHaEFC5SJCiYwwcPSYcmsXLmzBngQQACaSCAWKUBGk0g4E2gQcsYubdGtaBQzpw+Ld3bdJQ/ft8DOAhAII0EEKs0gqMZBJTAHffeLU3btQoJY+qYZPl62RcAgwAELoAAYnUB8GjqbgJ6m/qAMSPkkksuCQpi+TffSfKwUe4GhfcQSAcCiFU6QKQLdxJIHD9KChUuHNT5fXv3Snyz0LMud5LDawhETwCxip4ZLSAgoV6mqHhSUlKkc2wbObBvP7QgAIF0IIBYpQNEunAXgburVZVGIe79UxpjBw+XH/+33F1g8BYCGUgAscpAuHSd9Qhoenr/pKGSPcQ+1eeLl8jMCVOynvN4BIFMJIBYZSJ8Hu0sAtmyZbMuqC1QsGBQw3/fuctKU6dAAALpSwCxSl+e9JaFCcS0by233XNXUA/13r+4pi3kyOEjWZgCrkEgcwggVpnDnac6jEDVB6pL/dhmQa3Wt/4O69Nf1q35xWGeYS4EnEEAsXJGnLAyEwkUKVZU+o0cEnKf6uP35st7b8zJRCt5NASyNgHEKmvHF+8ukED27Nmtfar8BQoE7Wnrb5ulX3y3C3wSzSEAgVAEECvGBwRCEGgR316q3HFb0BrHjx2X9o1jeD09owgCGUwAscpgwHTvXALVaz0orzZtFNKBGcmTZfuWrenq5I6t20STNSgQgMB5AogVowECAQhomnrynBmi/17ssnTBQnlzyvSL/VieBwGjCSBWRocH4zKLgF5OO3525gjGskWfyqyJUzPLdZ4LASMJIFZGhgWjMpsAYpXZEeD5EPAlgFgxIiAQgABixbCAgFkEECuz4oE1hhBArAwJBGZA4B8CiBVDAQIBCOj5Kk2wyIyyYN58eXcWB4wzgz3PNJcAYmVubLAMAhCAAASYWTEGIAABCEDAKQSYWTklUtgJAQhAwMUEECsXBx/XIQABCDiFAGLllEhhJwQgAAEXE0CsXBx8XIcABCDgFAKIlVMihZ0QgAAEXEwAsXJx8HEdAhCAgFMIIFZOiRR2QgACEHAxAcTKxcHHdQhAAAJOIYBYOSVS2AkBCEDAxQQQKxcHH9chAAEIOIUAYuWUSGEnBCAAARcTQKxcHHxchwAEIOAUAoiVUyKFnRCAAARcTACxcnHwcR0CEICAUwggVk6JFHZCAAIQcDEBxMrFwcd1CEAAAk4hgFg5JVLYaRHIc9llcurUKUk5deqiENHn6bP0mZEWbZM7T26r+qmTJ+XI4SORNqUeBCAQhABixdCQHoMHSPbs2aMiMW1ssmz59Te7zSO1n5B7769h/X/Htm0yaeSYkP3p89p0jZd8BQrY9b798iv5ZN4Hqdo98czTUuPhmpK/QAG55JJLrO9TUlLk7yNH5LNPFstH78yLyvZQlUuXKyu1X3hOSpYpJZfmyiXZsmWzqp8+fVqOHvlbdu3YKW9Mmmr9G6y079lFylWsYH29Z/du6daqQ7rZR0cQcCsBxMqtkffye+Jbs6Km8M6s2T7C0rxjW7n1rjusfk6cOCEt6jQI2Wf3QQlS4sYb7Do6e+nepqP89cef9mfXXFtcWneNl0JXFg7Zl4rWgC69LGFIa7myaBHp0KubFC5yZURdbNn0m4wfNkr2/nneXk9DxCoihFSCQFQEEKuocGXNyhdbrFp3jZOKt1SxYeqspV98N9mxdZv9WZ48eWTwxDGSK1cuH+hnz561ZzveXxz9+6jENWspJ44fjzpIVR+oLvWaNZbs/8zaIu1ARbl76w6yf+8+nyYmi5WKcrWaD1j2bly3Xn5euTpSd6kHgUwlgFhlKn4zHu4tVrt37pSd23aENezTDxfIrxs22vUinVnVi2ls/1hqYxWfQT36yqZ1632e6T/z+uP3PTJ1zHjZtG6DtRRY5c7bpV6zRnLZ5Zfb7dasXCUjEwaFtd27QulyN0lcn+4+Aqg2rf7hR1m35mf5acUqOXPmtNxYprTce381qVClsk/d48eOS5cWbeXwoUN2tyaL1VPPPyO1X3jWsnX7lm3Sp2PnqHhRGQKZRQCxyizyBj3XW6zmvfmWfPRu9HtAkYiV/kjqj6WnqCiMHjhUVq/40YeGzqpGTZ9kf6YC2qNNXCpiKlpDJo6VK/JeYX135vRpaf5KfWt/KZKi7RLHJcmluS61q+uy3tDe/eXPPX8E7KJAoYKiQpovf377+1XLV8joxKHOEKvnnpHaLyJWkYwP6phFALEyKx6ZYs3FEKv7H35I6jT23ceakjROvvniq1Q+P/BwLXmlcX3784RO3X2SOfxnRvF9e1gf6RJgj7Zxsu+vvRFx9BZYbaAzxYFde4Vte0XevDJw7AjJlftcxp+Kbou6DeTkiZPW/02eWbXuEicVbz23BMvMKmyoqWAQAcTKoGBklikZLVa33Hm7qDB4MuvUz9lTZ8iSjz8J6PIL9erIv558zP6uZ9u4kNl3KoL/++83suGXtREj1FnZmFlT7exCnY21axgjR//+O6I+dN9HlzQ9RWejOiu92GKlWZWlbipjLYduXLs+pP3lK1eUVp07So4cOaIWqxw5c0q5CjfLiRPH5df1G+XMmTMRcQpUSW0O1l5nrqVvKit7dv8u27dsTfMzaJj1CCBWWS+mUXuUkWJVqmwZie/X00eoPnz7PXl/zttB7dSEh/qxzezvv//6W5kwPClqv0I1eOzp2vLMKy/aVd6e8YYsnP9RVM8YPXOKHD96TL798r9WZuSRw4fDipXufbXt3smqd/bMWWn92nnB8354u+6d5YYypayPdH9w/tx3fGzTH/UW8e3l+pI3+nyuKf36R8DbM960P69e60H5T4N6kjNnzlT+HTt2zPps9/adMqBrz1TfP/T4I1Yq/2WXX+bzne7V6XPmzT4n0P5Fj0NcWayI9fG0Mcly6OAh+b8Xn5MbS5e0ZqTr1vwiQ3sn2M0eevxRebbOSz426oxVl2PHJA4N+cdKVEGjsmMJIFaODV36GZ5RYnVV8Wuk55AB9l/yavGyRZ/KrIlTQxpfsHAhGTT+vDjpj5ZmrU1OGptuB2zb9egi5SudOwulpemLdS9otuDtUKhlwAq3VLbOl3lK4+dfCchiwJgRopl7WtT3EQmJdr0ixYpK35FD7FlhoA40s7J3h3PJE0957VMFA3/o4EFp36i5/bUKW5tu8VL25vIhY/X7zl2S2L13qriMnDbRFrivl30hd1e/z8ferb9ttjJALfbtWskd994d9Dka/5EJifLzqp/Sb9DTk+MIIFaOC1n6G+wtVvoj8svq0D8K337+Vaq/dP0TLLrEtpX+Y4b7pJ4v/+Y7SR42KiIH4vr0kDLlb/Kpqz9auh+1edOv8tOKldbSX1pvsug3aogUu/pqq/9IzoVFZPQ/lTJarBLHjfI5e6aznAP79kmRq4r5CIInWcY7AzCYHwf27ZeOTVvYX7fp1kkqVKlk/1/Zq6Blz5ZdrsiX12emvP7ntTKkVz+frr3FKtAzPWKlZ/N07HiKZzalRxbyFzx/YDy9YxRNPKlrBgHEyow4ZKoV0Z6z0uUf3XPyLt5ipQJy/PgJO0vPU2/u6zNl8YcLIvJVM/USkob5pKb7N9Qftu2bt8rsadOt/ZpoyshpE+y+NS2+a8t20TQPWTcjxSpvvnwybPI4+/lLP1kkb05+3fq/7lv1HTnYzlQ8eOCAdGgca33umaU1aNFMipe4zqr/x+7fJfmf5VU9K+ZJv9fbN9QHT9GjDCpGnmVOtaF9z65SvMS1dp3+XXrK5o2b7P8HEisVu01r18v+fftlx9at8tXSz32SUXQJU5dFPYkqugT5Uv1X7T51KViXhCnuJIBYuTPuPl6nt1gFQ6ri0jeua8Qb57qp36pTBylXqULAg8Def40vmPeBvPfGnIijmTR9sn1/385t26VX+3P7SOlRMlKs/IVEr3LyvrlDlxlj49rJmh9XWftc3get1bfOCb2lZNnSlpvBsgE107FwkXNLkJpw0rZBs1RLpBqbEVOT7Znzr+s3yMBuvYOK1XdffR3wCq7+o4eLLmsGs6fPiEGSI0dO+eyTRbJ0waKIjyWkRxzpwywCiJVZ8cgUa7zFSi9sPXniREg7NEHi0498M/n808A9Hehfy57sM/1MN/TbN4yJ6mJY3ZCv9cSjcssdt8vV115jp4z7Gzk9eZJ8+elnETHUH8Grixe36up1TW3qN42oXSSVMlKsdJaks0JP0dnK3GkzrRlHJBl6kYjV+NnT7eXEZQsXy/tzfJM7PM9u3CZWbq58bqnw4P4D0qFJbECx0iW8lnUbWin+/kWvuLqpwrl9Mf1el3bfe2NuwGusImFPnaxLALHKurGN2LP0TrDwPPjwwUPSuUVb6ZbYT6665tz+kJZIzzMFc0B/sF9q8KrcU/0+nxmXLj/G1mkQ0Y+296a+/kg2eaFOxLzCVcxIsdJnJ44fJYUK+96XqD6o6K5dvUb0j4lgF+2GEys9QzZ8yvhwLqb6Xv8oiflPvYBi5T/r8m582913SkyHNgH727Nrt3yxeKmVlBOJEEdtNA0cRQCxclS4MsbYjBArnUF1iW1jZYnpD+Dg5CTRpSNP0SWqD956N6RDeoFtqAO++iqOXsMG+vxw66Fe72uggj3g4acel+dfPZ+JF+rgcbA+mrRpYd0n+MFb7/hcUZXRYqUX/LbqEhfy0t1A+4rqRzix0jsb9e7GtBTvzEbvPSs9+K0HwIOVl+rXlZqPPRJ0qVf3ygZ06Sm6t0hxLwHEyr2xtz1Pb7HSv/LjY1r5XPBa6bZbrAOpnnLuTsA+1l1/3kX3SvTHS9PKdflPl5Z0iSlY8d/Dee/NufLxu++Hjare+K7XJnnKvr17Jb5Zq7DtPBXUTt3b8ZSF8z+0zzZltFh5nnlPjWryXN3/WAkV3geuPd/rXYpfL/vSx6dwYuV/bED/WDh04GBYLikppySxex+7nrdYRXJcQRNqGrZsbu1Pei8bezr0T60PaxAVshwBxCrLhTR6h9JbrIKlGddt2lBq1KppG6j1OjaOtfaxPMVffLxvhgjkmaafaxq6p4Q7cOzdh/dZJv08mnsRuwzoIzeWPndoV4u+3kTPHGkJJVZ6i4Qe+PUUPT8V6Obz4VOS7WxK/3NW/hz0Ng69YPfJ5562Ltz1FBUa/aPBu4QTK607Ye5MW/zenTVHFsybH3BQqUDefs9dsnL5ilRHCKIVK+8HaOZi9Vo1RbMBvW/dTxowJNU9ktGPdlo4lQBi5dTIpaPdF0us1GRNRy96VTHb+kAZaePemGYvGerltPHNW4ueAwpU/AUw3NVM3n2oHf1GDbV/mHW29+4bcwK+ANK7XZO2LeXOqvfYH/lnE4YSK51BqBB5yo//Wy5jBw/3cU0v8h35+kTbLm+xuqFUSXnqhWfk5koV5dcNm1Kdb9LbMTxJD3r+quWrDYOKVSAx08rDJo2TvPnzWe10CU6voQqUHNGgZYzcW6Oa9Z3OkHWm7CmRiJVeu/TYv2tbt/Dre8T0+ID3BcL++2cqmiqeFHcSQKzcGXcfr73FSpdsPpn3YVgq/i8djOTWde1Ul6w0QcB7qWfRBx/LW9PPvwBSrxGqcsdttg06A9M3D6/8/gf7M/2rXq/veeLZp33qhXvpo79j/375RXn837V9PtbkhOShI1MlKZSreLO81rypz16R/lAnduvts08W7iJb72w7PVOksx/PGSY1xDtDTv/vLVbeF9Hqd73ax/vsl+k1R9fdUMLyR9/x5X+dU8vOHaTybbfa/vq31y/0Xka9n9FTVIiG9xtgn3/Sz/XAsB4c9pRtm7dYxxKiEStd5h09Y7LdRs9p6XktT9GrpDQ5x1NmT50uSz5eGHZsUiFrEkCssmZco/Iq2nNW2rn/XXqRipW29b+1QD8b0W+gfZ2OJmIMTh6d6lCxipbuX+myl95u4L+3MW7ICFnx3fdR+a6VOyX0Er3D0L94bm2QsyKX570i1fP0ez2oqjdzeJdwYuUvxprFuGn9Bjl58qSULFMmld/e9+j5i4Q+V9+urEklpW8qY5+P0s/X/vSzDOvT38e2QLdZ6HGFP3bvsYTPU/Q6J+8MTrVRb504dSpFdHaXO8+5G+c9Ra9O0u+jESut6z/TVls2rl0n2bJlt24w8Y5xuP3LqANPA0cRQKwcFa6MMTYtYnWhr7WvH9tUqj5Qw3ZIfww7Nm1pzzB0L6r74IRUbwoORsA7wSEtlHQv7eVGr4W8b8+7X72lffr4iakSGLROOLHSGcWIKeN9siND2bztty3SN/78rKVRq+bWXXuhiqaSd2wSm+rOPv1DYOTUCT7v8NJ+/BMYNIGkW2JfK5MzXJk5cYp8vmiJT7VIlgG1gT5H9xwDJVV4d/j54iUyc8KUcKbwfRYmgFhl4eBG6pr3hnqkbfyvTmrUOlburlbVah7pPW4Dx470WVLzXwbSGZS+10r3NAJlu+mzdDly7OARostQF1p0P0lvf9CZg3eavXe/uof232VfWFcc6SwgUPFeagv24khNy9c3FHtuivDuR2dS+/fts/aDtAS6YUOXLx+p/URAcdW9qKSBQ1LdXuF5xrXXl5CWnTr43C+oHDs19z3vpMz1NSj6R0Ug/jrLnTFhsujLJ/2LntXyCF24bEBNxW/WobV9SNu7L529Ll2wMNX1Xhcaa9o7jwBi5byYuc5i3YjX/YuSZctIwcIFrb/C9Z1KG9auC5nWfiGgVLhurlJZSpYpJdmyZ7fuINy8aZPs2r4zYLJBWp+lGYWaEFH06mLW/Ya6jBnpO7V0hqbXK5W48XopdOWVVjbihl/WyaZ1kd2TqIJcqHAhOXb0mH0vYCA/9I8GXZIrX7mSFChYQHZt3yEb1q73uQswrf57t1MRLVu+nFx7Qwk5nZIiv23YJGtWrg5pW3o8lz6cQQCxckacsBICEICAqwkgVq4OP85DAAIQcAYBxMoZccJKCEAAAq4mgFi5Ovw4DwEIQMAZBBArZ8QJKyEAAQi4mgBi5erw4zwEIAABZxBArJwRJ6yEAAQg4GoCiJWrw4/zEIAABJxBALFyRpywEgIQgICrCSBWrg4/zkMAAhBwBgHEyhlxwkoIQAACriaAWLk6/DgPAQhAwBkEECtnxAkrIQABCLiaAGLl6vDjPAQgAAFnEECsnBEnrIQABCDgagKIlavDj/MQgAAEnEEAsXJGnLASAhCAgKsJIFauDj/OQwACEHAGAcTKGXHCSghAAAKuJoBYuTr8OA8BCEDAGQQQK2fECSshAAEIuJoAYuXq8OM8BCAAAWcQQKycESeshAAEIOBqAoiVq8OP8xCAAAScQQCxckacsBICEICAqwkgVq4OP85DAAIQcAYBxMoZccJKCEAAAq4mgFi5Ovw4DwEIQMAZBBArZ8QJKyEAAQi4mgBi5erw4zwEIAABZxBArJwRJ6yEAAQg4GoCiJWrw4/zEIAABJxBALFyRpywEgIQgICrCSBWrg4/zkMAAhBwBgHEyhlxwkoIQAACriaAWLk6/DgPAQhAwBkEECtnxAkrIQABCLiaAGLl6vDjPAQgAAFnEECsnBEnrIQABCA7nA2lAAAAxklEQVTgagKIlavDj/MQgAAEnEEAsXJGnLASAhCAgKsJIFauDj/OQwACEHAGAcTKGXHCSghAAAKuJoBYuTr8OA8BCEDAGQQQK2fECSshAAEIuJoAYuXq8OM8BCAAAWcQQKycESeshAAEIOBqAoiVq8OP8xCAAAScQQCxckacsBICEICAqwkgVq4OP85DAAIQcAYBxMoZccJKCEAAAq4mgFi5Ovw4DwEIQMAZBBArZ8QJKyEAAQi4mgBi5erw4zwEIAABZxD4f6YbQdZmKzgPAAAAAElFTkSuQmCC"
          }
        }
        params   = null
        pipeline = <<-EOT
                    ever Service = "EKS"
                    ever ServiceSubType = "Cluster"
                    statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()
                EOT
      },
      {
        id = "stage-5peq7q1r"
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
          index         = 14
          inputList     = []
          isInternal    = false
          label         = "RDS DB Instances"
          managers = [
            {
              id         = "nmryaf0i"
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
                  singleStatLabel = "RDS DB Instances"
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
            rollup = {}
            sort = [
              {
                ascending  = true
                columnName = "A_AWSAssetInventory_count_distinct_exact"
              },
            ]
            wantBuckets = 150
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-v19gie7y"
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
                            singleStatLabel = "RDS DB Instances"
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
                        filterActions = [
                          {
                            params = {
                              columnId   = "Service"
                              columnType = "string"
                              filterVerb = "ever"
                              values = [
                                {
                                  isExcluding = false
                                  value       = "RDS"
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
                                  value       = "DBInstance"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterValues"
                          },
                        ]
                        groupBy = []
                        id      = "datasetQueryExpression-zitoeyj4"
                        inputSource = {
                          parameterId = "input-parameter-xmyuiu01"
                        }
                        invalidGroupBy  = []
                        lookupActions   = []
                        summaryFunction = "count_distinct_exact"
                        summaryMode     = "single"
                        type            = "datasetQueryExpression"
                        valueColumnId   = "A_AWSAssetInventory_count_distinct_exact"
                        viewTab         = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-mj45rpkz"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-zitoeyj4",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-wvhbbqhc"
              index         = 1
              isPinned      = false
              opal = [
                "ever Service = \"RDS\"",
                "ever ServiceSubType = \"DBInstance\"",
                "statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()",
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
            showTimeRuler   = true
            stageTab        = "vis"
            thumbnailVisUri = "data:image/png;base64,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"
          }
        }
        params   = null
        pipeline = <<-EOT
                    ever Service = "RDS"
                    ever ServiceSubType = "DBInstance"
                    statsby A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()
                EOT
      },
      {
        id = "stage-r358zq9i"
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
          dataTableViewState = {
            cellValuePresentation = []
            columnOrderOverride   = []
            columnVisibility      = []
            columnWidths = [
              [
                "message",
                1097,
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
            tableWidth = 2885
            viewType   = "Compact"
          }
          disableOutput = false
          index         = 15
          inputList     = []
          isInternal    = false
          label         = "Logs"
          managers      = []
          queryPresentation = {
            initialRollupFilter = {
              mode = "Last"
            }
            resultKinds = [
              "ResultKindSchema",
              "ResultKindData",
              "ResultKindVolumeStats",
              "ResultKindColumnStats",
              "ResultKindProgress",
            ]
            rollup = {}
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-l1ib5ias"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              action = {
                params = {
                  expressionList = {
                    aggregationMode = "raw"
                    expressions = [
                      {
                        expressionIdentifier = "A"
                        field                = "***row***"
                        filterActions = [
                          {
                            params = {
                              columnId   = "Resource"
                              columnType = "link"
                              fk = {
                                dstFields = [
                                  "AccountID",
                                  "Region",
                                  "Service",
                                  "ID",
                                ]
                                label = "Resource"
                                srcFields = [
                                  "accountId",
                                  "region",
                                  "service",
                                  "resourceId",
                                ]
                                targetDataset    = local.resources
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                "input-parameter-xmyuiu01",
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        groupBy = []
                        id      = "datasetQueryExpression-4klk2yxx"
                        inputSource = {
                          datasetId = local.logs
                        }
                        lookupActions   = []
                        summaryFunction = "count"
                        summaryMode     = "over-time"
                        type            = "datasetQueryExpression"
                        viewTab         = "raw"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier = "A"
                      filterActions        = []
                      id                   = "multiExpression-3kjgrluo"
                      lookupActions        = []
                      type                 = "multiExpression"
                      viewTab              = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-4klk2yxx",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-rag97b9f"
              index         = 1
              isPinned      = false
              opal = [
                "exists accountId = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
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
            stageTab      = "table"
            thumbnailTableData = {
              rows = [
                [
                  "1718375275676000000",
                  "cluster/eng",
                  "{\"jsonPayload\":{\"annotations\":{\"authorization.k8s.io/decision\":\"allow\",\"authorization.k8s.io/reason\"",
                  "/aws/eks/eng/cluster",
                  "kube-apiserver-audit-18f54ea9a49444077ade6d5e79f371d0",
                ],
                [
                  "1718375275676000000",
                  "cluster/eng",
                  "{\"jsonPayload\":{\"annotations\":{\"authorization.k8s.io/decision\":\"allow\",\"authorization.k8s.io/reason\"",
                  "/aws/eks/eng/cluster",
                  "kube-apiserver-audit-18f54ea9a49444077ade6d5e79f371d0",
                ],
                [
                  "1718375275676000000",
                  "cluster/eng",
                  "{\"jsonPayload\":{\"annotations\":{\"authorization.k8s.io/decision\":\"allow\",\"authorization.k8s.io/reason\"",
                  "/aws/eks/eng/cluster",
                  "kube-apiserver-audit-18f54ea9a49444077ade6d5e79f371d0",
                ],
                [
                  "1718375275676000000",
                  "cluster/eng",
                  "{\"jsonPayload\":{\"annotations\":{\"authorization.k8s.io/decision\":\"allow\",\"authorization.k8s.io/reason\"",
                  "/aws/eks/eng/cluster",
                  "kube-apiserver-audit-18f54ea9a49444077ade6d5e79f371d0",
                ],
                [
                  "1718375275427000000",
                  "cluster/eng",
                  "{\"jsonPayload\":{\"annotations\":{\"authorization.k8s.io/decision\":\"allow\",\"authorization.k8s.io/reason\"",
                  "/aws/eks/eng/cluster",
                  "kube-apiserver-audit-18f54ea9a49444077ade6d5e79f371d0",
                ],
                [
                  "1718375275427000000",
                  "cluster/eng",
                  "{\"jsonPayload\":{\"annotations\":{\"authorization.k8s.io/decision\":\"allow\",\"authorization.k8s.io/reason\"",
                  "/aws/eks/eng/cluster",
                  "kube-apiserver-audit-18f54ea9a49444077ade6d5e79f371d0",
                ],
                [
                  "1718375275427000000",
                  "cluster/eng",
                  "{\"jsonPayload\":{\"annotations\":{\"authorization.k8s.io/decision\":\"allow\",\"authorization.k8s.io/reason\"",
                  "/aws/eks/eng/cluster",
                  "kube-apiserver-audit-18f54ea9a49444077ade6d5e79f371d0",
                ],
                [
                  "1718375275427000000",
                  "cluster/eng",
                  "{\"jsonPayload\":{\"annotations\":{\"authorization.k8s.io/decision\":\"allow\",\"authorization.k8s.io/reason\"",
                  "/aws/eks/eng/cluster",
                  "kube-apiserver-audit-18f54ea9a49444077ade6d5e79f371d0",
                ],
                [
                  "1718375275427000000",
                  "cluster/eng",
                  "{\"jsonPayload\":{\"annotations\":{\"authorization.k8s.io/decision\":\"allow\",\"authorization.k8s.io/reason\"",
                  "/aws/eks/eng/cluster",
                  "kube-apiserver-audit-18f54ea9a49444077ade6d5e79f371d0",
                ],
                [
                  "1718375275364000000",
                  "function:observeinc-filedrop-eng-us-west-2-wnnfs-copy-func",
                  "{\"textPayload\":\"REPORT RequestId: e242410b-5836-5790-8db5-1fed0d93f0f9\\tDuration: 143.01 ms\\tBilled ",
                  "/aws/lambda/observeinc-filedrop-eng-us-west-2-wnnfs-copy-func",
                  "2024/06/14/[$LATEST]d8c0ac94f059484785eeec405f425d66",
                ],
              ]
              schema = [
                {
                  id    = "timestamp"
                  type  = "timestamp"
                  width = 182.1
                },
                {
                  id    = "Resource"
                  type  = "link"
                  width = 414.79999999999995
                },
                {
                  id    = "message"
                  type  = "object"
                  width = 1097
                },
                {
                  id    = "logGroup"
                  type  = "string"
                  width = 513.9000000000001
                },
                {
                  id    = "logStream"
                  type  = "string"
                  width = 450.70000000000005
                },
              ]
            }
          }
        }
        params   = null
        pipeline = "exists accountId = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID"
      },
    ]
  )
}

