resource "observe_dashboard" "rds_instances" {
  description = "RDS Instances Dashboard"
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
                  stageId  = "stage-zfec66yw"
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
                  stageId  = "stage-ugk7tse2"
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
                  stageId  = "stage-d36anezu"
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
                  stageId  = "stage-7t3q2n6s"
                }
                layout = {
                  h = 18
                  w = 12
                  x = 0
                  y = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-urk9ryu6"
                }
                layout = {
                  h = 22
                  w = 6
                  x = 0
                  y = 34
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-yay85b89"
                }
                layout = {
                  h = 11
                  w = 6
                  x = 6
                  y = 34
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-smvuugxb"
                }
                layout = {
                  h = 11
                  w = 6
                  x = 6
                  y = 45
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-pjfpqlrv"
                }
                layout = {
                  h = 18
                  w = 6
                  x = 0
                  y = 56
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-8ls12a2c"
                }
                layout = {
                  h = 18
                  w = 6
                  x = 6
                  y = 56
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-ekgg5qje"
                }
                layout = {
                  h = 18
                  w = 6
                  x = 0
                  y = 74
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-vf67n4iw"
                }
                layout = {
                  h = 18
                  w = 6
                  x = 6
                  y = 74
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
            id                    = "input-parameter-pgp2aokw"
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
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "InstanceClass"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "groupBy"
            name                  = "Group By"
            source                = "CustomData"
            sourceCustomData = [
              [
                "Instance Class",
                "InstanceClass",
              ],
              [
                "Status",
                "Status",
              ],
              [
                "Subnet Group Name",
                "SubnetGroupName",
              ],
              [
                "VPC ID",
                "VpcId",
              ],
              [
                "Engine",
                "Engine",
              ],
              [
                "MultiAz",
                "MultiAz",
              ],
              [
                "Cluster ID",
                "ClusterId",
              ],
              [
                "IAM Authentication Enabled",
                "IAMAuthenticationEnabled",
              ],
            ]
            valueKind = {
              type = "STRING"
            }
            viewType = "single-select"
          },
        ]
        selectedStageId = "stage-ugk7tse2"
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
  name = local.rds_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.aws_asset_inventory
          }
        }
        id   = "input-parameter-pgp2aokw"
        name = "AWS Asset Inventory"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
        }
      },
      {
        defaultValue = {
          string = "InstanceClass"
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
        id = "stage-pjfpqlrv"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/RDS/CPUUtilizationmax_from_AWS-Quickstart/Metrics"
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
          inputList     = []
          isInternal    = false
          label         = "Max CPU Utilization by Instance"
          managers = [
            {
              id         = "hbfrk8eo"
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
                    unit    = "% (0-100)"
                    visible = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSRDSCPUUtilizationmax_sum"
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
            rollup      = {}
            wantBuckets = 250
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-rw0ys9cc"
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
                              unit    = "% (0-100)"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSRDSCPUUtilizationmax_sum"
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
                              paths = {
                                DBInstanceIdentifier = false
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
                                targetDataset    = local.aws_asset_inventory
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                {
                                  parameterId = "input-parameter-pgp2aokw"
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
                        id             = "metricExpression-wxzewg41"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-09-06T21:53:00Z"
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
                                path   = "DBInstanceIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DBClusterIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DatabaseClass"
                              },
                              {
                                column = "dimensions"
                                path   = "Role"
                              },
                              {
                                column = "dimensions"
                                path   = "EngineName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/RDS/CPUUtilization.max"
                          nameWithPath        = "AWS/RDS/CPUUtilization.max (AWS-Quickstart/Metrics)"
                          rollup              = "avg"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = "% (0-100)"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = false
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSRDSCPUUtilizationmax_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-b8kcpueh"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-wxzewg41",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-e97omo8f"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSRDSCPUUtilizationmax_sum:avg(m(\"AWS/RDS/CPUUtilization.max\"))",
                "aggregate A_AWSRDSCPUUtilizationmax_sum:sum(A_AWSRDSCPUUtilizationmax_sum), group_by(^Resource...)",
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
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSRDSCPUUtilizationmax_sum:avg(m("AWS/RDS/CPUUtilization.max"))
                    aggregate A_AWSRDSCPUUtilizationmax_sum:sum(A_AWSRDSCPUUtilizationmax_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-7t3q2n6s"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/RDS/CPUUtilizationmax_from_AWS-Quickstart/Metrics"
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
          index         = 1
          inputList = [
            {
              datasetId   = local.metrics
              id          = "query-input-koybs932"
              inputName   = "AWS/RDS/CPUUtilizationmax_from_AWS-Quickstart/Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              id          = "query-input-p9w9feqm"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-pgp2aokw"
            },
          ]
          isInternal = false
          label      = "Max. CPU Utilization (Top 50)"
          managers = [
            {
              id         = "9u8zyf1i"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  cohort = "groupBy"
                  colorScaleConfig = {
                    bounds = {
                      end   = 80
                      start = 0
                    }
                    colorScaleType         = "Sequential"
                    divergingColorScale    = "RdYlGn"
                    divergingScaleMidpoint = 50
                    sequentialColorScale   = "Oranges"
                  }
                  nodeColorConfigType = "Threshold"
                  nodeColorField      = "cpu_util"
                  nodeInnerTextField  = "cpu_util"
                  nodeInnerTextUnit   = "% (0-100)"
                  nodeThresholds = {
                    defaultColor  = "Blue"
                    drawType      = "Lines"
                    mode          = "Value"
                    startingColor = "Default"
                    thresholds = [
                      {
                        exceedsColor = "Yellow"
                        value        = 50
                      },
                      {
                        exceedsColor = "Red"
                        value        = 80
                      },
                    ]
                  }
                  nodeTooltipFields = []
                  shape             = "hex"
                  type              = "hex"
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
              customSummary = "AWS/RDS/CPUUtilizationmax_from_AWS-Quickstart/Metrics"
              id            = "step-nhw1v7ek"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-nvi8ey9f"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "",
                "align options(bins:1), cpu_util:max(m(\"AWS/RDS/CPUUtilization.max\"))",
                "aggregate cpu_util:max(cpu_util), group_by(^Resource...)",
                "",
                "topk 50, max(cpu_util)",
                "lookup ^Resource, \"Configuration\": ^Resource.Configuration",
                "",
                "make_col",
                "  InstanceClass:string(Configuration[\"dBInstanceClass\"]),",
                "  Status:string(Configuration.dBInstanceStatus),",
                "  SubnetGroupName:string(Configuration.dBSubnetGroup.dBSubnetGroupName),",
                "  VpcId:string(Configuration.dBSubnetGroup.vpcId),",
                "  Engine:concat_strings(string(Configuration.engine), \":\", string(Configuration.engineVersion)),",
                "  MultiAz:string(Configuration.multiAZ),",
                "  ClusterId:string(Configuration.dBClusterIdentifier),",
                "  IAMAuthenticationEnabled:string(Configuration.iAMDatabaseAuthenticationEnabled)",
                "",
                "",
                "make_col groupBy:case(",
                "  $groupBy=\"Instance Class\", InstanceClass,",
                "  $groupBy=\"Status\", Status,",
                "  $groupBy=\"SubnetGroupName\", SubnetGroupName,",
                "  $groupBy=\"VpcId\", VpcId,",
                "  $groupBy=\"Engine\", Engine,",
                "  $groupBy=\"MultiAz\", MultiAz,",
                "  $groupBy=\"ClusterId\", ClusterId,",
                "  $groupBy=\"IAMAuthenticationEnabled\", IAMAuthenticationEnabled,",
                "  true, InstanceClass",
                ")",
                "  ",
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
            stageOutputHeight = 63.37285902503294
            stageTab          = "vis"
            thumbnailId       = "8qaxokxf"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    
                    align options(bins:1), cpu_util:max(m("AWS/RDS/CPUUtilization.max"))
                    aggregate cpu_util:max(cpu_util), group_by(^Resource...)
                    
                    topk 50, max(cpu_util)
                    lookup ^Resource, "Configuration": ^Resource.Configuration
                    
                    make_col
                      InstanceClass:string(Configuration["dBInstanceClass"]),
                      Status:string(Configuration.dBInstanceStatus),
                      SubnetGroupName:string(Configuration.dBSubnetGroup.dBSubnetGroupName),
                      VpcId:string(Configuration.dBSubnetGroup.vpcId),
                      Engine:concat_strings(string(Configuration.engine), ":", string(Configuration.engineVersion)),
                      MultiAz:string(Configuration.multiAZ),
                      ClusterId:string(Configuration.dBClusterIdentifier),
                      IAMAuthenticationEnabled:string(Configuration.iAMDatabaseAuthenticationEnabled)
                    
                    
                    make_col groupBy:case(
                      $groupBy="Instance Class", InstanceClass,
                      $groupBy="Status", Status,
                      $groupBy="SubnetGroupName", SubnetGroupName,
                      $groupBy="VpcId", VpcId,
                      $groupBy="Engine", Engine,
                      $groupBy="MultiAz", MultiAz,
                      $groupBy="ClusterId", ClusterId,
                      $groupBy="IAMAuthenticationEnabled", IAMAuthenticationEnabled,
                      true, InstanceClass
                    )
                EOT
      },
      {
        id = "stage-zfec66yw"
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
          index         = 2
          inputList     = []
          isInternal    = false
          label         = "Instances"
          managers = [
            {
              id         = "sfb1wq8c"
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
            rollup = {}
            sort = [
              {
                ascending  = false
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
              id            = "step-k4gfmfky"
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
                          parameterId = "input-parameter-pgp2aokw"
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
              id            = "step-1wi71huf"
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
            showTimeRuler = true
            stageTab      = "vis"
          }
        }
        params   = null
        pipeline = "timechart options(empty_bins:true), A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by()"
      },
      {
        id = "stage-ugk7tse2"
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
            tableWidth = 1092
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 3
          inputList = [
            {
              id          = "query-input-5jrmwyq3"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-pgp2aokw"
            },
          ]
          isInternal = false
          label      = "Instances by Engine & Version"
          managers = [
            {
              id         = "dzab3gkh"
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
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
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
            rollup      = {}
            wantBuckets = 1
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS Asset Inventory"
              id            = "step-d78nr679"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-ilqfqyoo"
              index         = 1
              isPinned      = false
              opal = [
                "make_col engineAndVersion:concat_strings(string(Configuration.engine), \":\", string(Configuration.engineVersion))",
                "timechart options(empty_bins:true), count:count_distinct_exact(AccountID, Region, Service, ID), group_by(engineAndVersion)",
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
          }
        }
        params   = null
        pipeline = <<-EOT
                    make_col engineAndVersion:concat_strings(string(Configuration.engine), ":", string(Configuration.engineVersion))
                    timechart options(empty_bins:true), count:count_distinct_exact(AccountID, Region, Service, ID), group_by(engineAndVersion)
                EOT
      },
      {
        id = "stage-d36anezu"
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
            tableWidth = 1092
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 4
          inputList = [
            {
              id          = "query-input-8lk7n9zp"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-pgp2aokw"
            },
          ]
          isInternal = false
          label      = "Instances by Class"
          managers = [
            {
              id         = "d8y2e4ih"
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
                      fn = "count"
                    }
                    timechart = {
                      fn         = "count"
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
            rollup      = {}
            wantBuckets = 1
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS Asset Inventory"
              id            = "step-00v5f84d"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-s468dxis"
              index         = 1
              isPinned      = false
              opal = [
                "make_col dBInstanceClass:string(Configuration.dBInstanceClass)",
                "timechart options(empty_bins:true), count:count_distinct_exact(AccountID, Region, Service, ID), group_by(dBInstanceClass)",
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
            thumbnailId   = "bkaa43el"
          }
        }
        params   = null
        pipeline = <<-EOT
                    make_col dBInstanceClass:string(Configuration.dBInstanceClass)
                    timechart options(empty_bins:true), count:count_distinct_exact(AccountID, Region, Service, ID), group_by(dBInstanceClass)
                EOT
      },
      {
        id = "stage-8ls12a2c"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/RDS/FreeableMemorymax_from_AWS-Quickstart/Metrics"
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
          label         = "Max Freeable Memory"
          managers = [
            {
              id         = "q09uzrzr"
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
                    unit    = "By"
                    visible = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSRDSFreeableMemorymax_sum"
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
            rollup      = {}
            wantBuckets = 250
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-1cicrpc8"
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
                              unit    = "By"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSRDSFreeableMemorymax_sum"
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
                              differentPathsUseAnd = false
                              expandedKeys         = []
                              filterVerb           = "filter"
                              paths = {
                                DBInstanceIdentifier = false
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
                                targetDataset    = local.aws_asset_inventory
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                {
                                  parameterId = "input-parameter-pgp2aokw"
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
                        id             = "metricExpression-n0ouptxk"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-09-12T14:09:00Z"
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
                                path   = "DBInstanceIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DBClusterIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DatabaseClass"
                              },
                              {
                                column = "dimensions"
                                path   = "Role"
                              },
                              {
                                column = "dimensions"
                                path   = "EngineName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/RDS/FreeableMemory.max"
                          nameWithPath        = "AWS/RDS/FreeableMemory.max (AWS-Quickstart/Metrics)"
                          rollup              = "max"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = "By"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = false
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSRDSFreeableMemorymax_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-y9acr42b"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-n0ouptxk",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-ykjjmxjg"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSRDSFreeableMemorymax_sum:max(m(\"AWS/RDS/FreeableMemory.max\"))",
                "aggregate A_AWSRDSFreeableMemorymax_sum:sum(A_AWSRDSFreeableMemorymax_sum), group_by(^Resource...)",
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
            thumbnailId   = "qwnuuufx"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSRDSFreeableMemorymax_sum:max(m("AWS/RDS/FreeableMemory.max"))
                    aggregate A_AWSRDSFreeableMemorymax_sum:sum(A_AWSRDSFreeableMemorymax_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-urk9ryu6"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/RDS/DatabaseConnectionssum_from_AWS-Quickstart/Metrics"
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
                "Resource",
                285,
              ],
            ]
            defaultColumnWidth          = 70
            disableFixedLeftColumns     = false
            minColumnWidth              = 60
            preserveCellAndRowSelection = true
            rowHeights                  = []
            selection = {
              cells = {
                A_AWSRDSDatabaseConnectionssum_sum = {
                  "2" = true
                }
              }
              columnSelectSequence = []
              columns              = {}
              highlightState       = {}
              rows                 = {}
              selectionType        = "cell"
            }
            tableWidth = 2140
            viewType   = "Auto"
          }
          disableOutput = false
          index         = 6
          inputList     = []
          isInternal    = false
          label         = "Database Connections"
          managers = [
            {
              id         = "r3tlrnp1"
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
                    y             = "A_AWSRDSDatabaseConnectionssum_sum"
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
              id            = "step-twbynuvg"
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
                              unit      = ""
                              visible   = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSRDSDatabaseConnectionssum_sum"
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
                                targetDataset    = local.aws_asset_inventory
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                {
                                  parameterId = "input-parameter-pgp2aokw"
                                },
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
                                DBInstanceIdentifier = false
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
                            label = "Resource"
                            srcFields = [
                              "account_id",
                              "region",
                              "service",
                              "resourceId",
                            ]
                          },
                        ]
                        id             = "metricExpression-n0ouptxk"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-12T22:06:00Z"
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
                                path   = "DBInstanceIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DBClusterIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "Role"
                              },
                              {
                                column = "dimensions"
                                path   = "DatabaseClass"
                              },
                              {
                                column = "dimensions"
                                path   = "EngineName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/RDS/DatabaseConnections.sum"
                          nameWithPath        = "AWS/RDS/DatabaseConnections.sum (AWS-Quickstart/Metrics)"
                          rollup              = "avg"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = ""
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = false
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSRDSDatabaseConnectionssum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-y9acr42b"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-n0ouptxk",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-2tprw7uf"
              index         = 1
              isPinned      = false
              opal = [
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json(\"null\")))",
                "align A_AWSRDSDatabaseConnectionssum_sum:avg(m(\"AWS/RDS/DatabaseConnections.sum\"))",
                "aggregate A_AWSRDSDatabaseConnectionssum_sum:sum(A_AWSRDSDatabaseConnectionssum_sum), group_by(^Resource...)",
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
            showTimeRuler     = true
            stageOutputHeight = 67.816091954023
            stageTab          = "vis"
            thumbnailId       = "3mtthxzc"
          }
        }
        params   = null
        pipeline = <<-EOT
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json("null")))
                    align A_AWSRDSDatabaseConnectionssum_sum:avg(m("AWS/RDS/DatabaseConnections.sum"))
                    aggregate A_AWSRDSDatabaseConnectionssum_sum:sum(A_AWSRDSDatabaseConnectionssum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-ekgg5qje"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/RDS/ReadThroughputmax_from_AWS-Quickstart/Metrics"
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
          label         = "Max Read Throughput"
          managers = [
            {
              id         = "an2nd6d5"
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
                    unit    = "B/s"
                    visible = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSRDSReadThroughputmax_sum"
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
            rollup      = {}
            wantBuckets = 250
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-8acwjw4v"
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
                              unit    = "B/s"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSRDSReadThroughputmax_sum"
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
                              paths = {
                                DBInstanceIdentifier = false
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
                                targetDataset    = local.aws_asset_inventory
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                {
                                  parameterId = "input-parameter-pgp2aokw"
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
                        id             = "metricExpression-822bzjhe"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-09-12T14:09:00Z"
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
                                path   = "DBInstanceIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DBClusterIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DatabaseClass"
                              },
                              {
                                column = "dimensions"
                                path   = "Role"
                              },
                              {
                                column = "dimensions"
                                path   = "EngineName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/RDS/ReadThroughput.max"
                          nameWithPath        = "AWS/RDS/ReadThroughput.max (AWS-Quickstart/Metrics)"
                          rollup              = "avg"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = "B/s"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSRDSReadThroughputmax_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-1tixu4qx"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-822bzjhe",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-3mfkapbv"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSRDSReadThroughputmax_sum:avg(m(\"AWS/RDS/ReadThroughput.max\"))",
                "aggregate A_AWSRDSReadThroughputmax_sum:sum(A_AWSRDSReadThroughputmax_sum), group_by(^Resource...)",
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
            thumbnailId   = "iysfijk5"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSRDSReadThroughputmax_sum:avg(m("AWS/RDS/ReadThroughput.max"))
                    aggregate A_AWSRDSReadThroughputmax_sum:sum(A_AWSRDSReadThroughputmax_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-yay85b89"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/RDS/ReadLatencysum_from_AWS-Quickstart/Metrics"
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
          label         = "Read Latency"
          managers = [
            {
              id         = "w46zz91s"
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
                    unit    = "seconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSRDSReadLatencysum_sum"
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
              id            = "step-ynuz72gn"
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
                              unit    = "seconds"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSRDSReadLatencysum_sum"
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
                                DBInstanceIdentifier = false
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
                                  parameterId = "input-parameter-pgp2aokw"
                                },
                              ]
                            }
                            summary = null
                            type    = "FilterParameter"
                          },
                        ]
                        frameDuration = {
                          num  = 10
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
                        id             = "metricExpression-822bzjhe"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-12T23:53:00Z"
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
                                path   = "DBInstanceIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DBClusterIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DatabaseClass"
                              },
                              {
                                column = "dimensions"
                                path   = "Role"
                              },
                              {
                                column = "dimensions"
                                path   = "EngineName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/RDS/ReadLatency.sum"
                          nameWithPath        = "AWS/RDS/ReadLatency.sum (AWS-Quickstart/Metrics)"
                          rollup              = "avg"
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
                        valueColumnId          = "A_AWSRDSReadLatencysum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-1tixu4qx"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-822bzjhe",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-xey5r6ql"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSRDSReadLatencysum_sum:avg(m(\"AWS/RDS/ReadLatency.sum\"))",
                "aggregate A_AWSRDSReadLatencysum_sum:sum(A_AWSRDSReadLatencysum_sum), group_by(^Resource...)",
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
            thumbnailId   = "ues7fmw0"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSRDSReadLatencysum_sum:avg(m("AWS/RDS/ReadLatency.sum"))
                    aggregate A_AWSRDSReadLatencysum_sum:sum(A_AWSRDSReadLatencysum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-smvuugxb"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/RDS/WriteLatencysum_from_AWS-Quickstart/Metrics"
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
          label         = "Write Latency"
          managers = [
            {
              id         = "uca7zt9h"
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
                    unit    = "seconds"
                    visible = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSRDSWriteLatencysum_sum"
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
              id            = "step-4ssm85op"
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
                              unit    = "seconds"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSRDSWriteLatencysum_sum"
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
                                DBInstanceIdentifier = false
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
                                  parameterId = "input-parameter-pgp2aokw"
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
                        id             = "metricExpression-822bzjhe"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-11-12T23:53:00Z"
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
                                path   = "DBInstanceIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DBClusterIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DatabaseClass"
                              },
                              {
                                column = "dimensions"
                                path   = "Role"
                              },
                              {
                                column = "dimensions"
                                path   = "EngineName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/RDS/WriteLatency.sum"
                          nameWithPath        = "AWS/RDS/WriteLatency.sum (AWS-Quickstart/Metrics)"
                          rollup              = "avg"
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
                        valueColumnId          = "A_AWSRDSWriteLatencysum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-1tixu4qx"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-822bzjhe",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-5dnoj6as"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSRDSWriteLatencysum_sum:avg(m(\"AWS/RDS/WriteLatency.sum\"))",
                "aggregate A_AWSRDSWriteLatencysum_sum:sum(A_AWSRDSWriteLatencysum_sum), group_by(^Resource...)",
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
            thumbnailId   = "ak3xdi99"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSRDSWriteLatencysum_sum:avg(m("AWS/RDS/WriteLatency.sum"))
                    aggregate A_AWSRDSWriteLatencysum_sum:sum(A_AWSRDSWriteLatencysum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-vf67n4iw"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/RDS/WriteThroughputmax_from_AWS-Quickstart/Metrics"
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
          label         = "Max Write Throughput"
          managers = [
            {
              id         = "xj7pb3zg"
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
                    unit    = "B/s"
                    visible = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSRDSWriteThroughputmax_sum"
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
            rollup      = {}
            wantBuckets = 250
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-h65boahz"
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
                              unit    = "B/s"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSRDSWriteThroughputmax_sum"
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
                              paths = {
                                DBInstanceIdentifier = false
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
                                targetDataset    = local.aws_asset_inventory
                                targetStageLabel = ""
                                type             = "linked"
                              }
                              parameterFilters = [
                                {
                                  parameterId = "input-parameter-pgp2aokw"
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
                        id             = "metricExpression-dba0enws"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-09-12T14:09:00Z"
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
                                path   = "DBInstanceIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DBClusterIdentifier"
                              },
                              {
                                column = "dimensions"
                                path   = "DatabaseClass"
                              },
                              {
                                column = "dimensions"
                                path   = "Role"
                              },
                              {
                                column = "dimensions"
                                path   = "EngineName"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/RDS/WriteThroughput.max"
                          nameWithPath        = "AWS/RDS/WriteThroughput.max (AWS-Quickstart/Metrics)"
                          rollup              = "avg"
                          state               = "Active"
                          suggestedBucketSize = "60000000000"
                          type                = "gauge"
                          unit                = "B/s"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = true
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSRDSWriteThroughputmax_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-70wyyqyp"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-dba0enws",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-bfi0v0y6"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSRDSWriteThroughputmax_sum:avg(m(\"AWS/RDS/WriteThroughput.max\"))",
                "aggregate A_AWSRDSWriteThroughputmax_sum:sum(A_AWSRDSWriteThroughputmax_sum), group_by(^Resource...)",
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
            thumbnailId   = "adlfmgia"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.DBInstanceIdentifier) or dimensions.DBInstanceIdentifier = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSRDSWriteThroughputmax_sum:avg(m("AWS/RDS/WriteThroughput.max"))
                    aggregate A_AWSRDSWriteThroughputmax_sum:sum(A_AWSRDSWriteThroughputmax_sum), group_by(^Resource...)
                EOT
      },
    ]
  )
  workspace = local.workspace
}

