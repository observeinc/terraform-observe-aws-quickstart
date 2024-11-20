# terraform import observe_dashboard.ec2_instances 41051012
resource "observe_dashboard" "ec2_instances" {
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
                  stageId  = "stage-wkyrd3yv"
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
                  stageId  = "stage-re6fd8fx"
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
                  cardType = "stage"
                  stageId  = "stage-c6z3vdei"
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
                  stageId  = "stage-ujsasteu"
                }
                layout = {
                  h = 23
                  w = 12
                  x = 0
                  y = 16
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-ij5526eu"
                }
                layout = {
                  h = 24
                  w = 6
                  x = 0
                  y = 39
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-mkg9ctav"
                }
                layout = {
                  h = 12
                  w = 6
                  x = 6
                  y = 39
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-ys87re87"
                }
                layout = {
                  h = 12
                  w = 6
                  x = 6
                  y = 51
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-gfwioheu"
                }
                layout = {
                  h = 12
                  w = 6
                  x = 6
                  y = 63
                }
              },
              {
                card = {
                  cardType = "stage"
                  stageId  = "stage-n9h5zrmj"
                }
                layout = {
                  h = 12
                  w = 6
                  x = 0
                  y = 63
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
            id                    = "input-parameter-w4hr9492"
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
            valueKind = {
              type = "DATASETREF"
            }
            viewType = "input"
          },
          {
            allowEmpty = false
            defaultValue = {
              string = "InstanceType"
            }
            emptyValueEncoding    = "null"
            emptyValueLabelOption = "null"
            id                    = "groupBy"
            name                  = "Group By"
            source                = "CustomData"
            sourceCustomData = [
              [
                "VPC ID",
                "VpcId",
              ],
              [
                "Subnet ID",
                "SubnetId",
              ],
              [
                "Image ID",
                "ImageId",
              ],
              [
                "Architecture",
                "Architecture",
              ],
              [
                "Instance Type",
                "InstanceType",
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
  name = local.ec2_dashboard_name
  parameters = jsonencode(
    [
      {
        defaultValue = {
          datasetref = {
            datasetId = local.aws_asset_inventory
          }
        }
        id   = "input-parameter-w4hr9492"
        name = "AWS Asset Inventory"
        valueKind = {
          arrayItemType   = null
          keyForDatasetId = null
          type            = "DATASETREF"
        }
      },
      {
        defaultValue = {
          string = "InstanceType"
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
        id = "stage-ij5526eu"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/EC2/CPUUtilizationmax_from_AWS-Quickstart/Metrics"
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
          label         = "Max CPU Utilization"
          managers = [
            {
              id         = "jb4qa5h5"
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
                    unit    = "percent (0-100)"
                    visible = true
                  }
                }
                source = {
                  table = {
                    transformType = "none"
                    type          = "xy"
                    x             = "valid_from"
                    y             = "A_AWSEC2CPUUtilizationmax_sum"
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
              id            = "step-j9rktt12"
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
                              unit    = "percent (0-100)"
                              visible = true
                            }
                          }
                          source = {
                            table = {
                              transformType = "none"
                              type          = "xy"
                              x             = "valid_from"
                              y             = "A_AWSEC2CPUUtilizationmax_sum"
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
                                InstanceId = false
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
                                  parameterId = "input-parameter-w4hr9492"
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
                        id             = "metricExpression-tx4mkx2x"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-09-12T14:50:00Z"
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
                                path   = "InstanceId"
                              },
                              {
                                column = "dimensions"
                                path   = "AutoScalingGroupName"
                              },
                              {
                                column = "dimensions"
                                path   = "ImageId"
                              },
                              {
                                column = "dimensions"
                                path   = "InstanceType"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/EC2/CPUUtilization.max"
                          nameWithPath        = "AWS/EC2/CPUUtilization.max (AWS-Quickstart/Metrics)"
                          rollup              = "max"
                          state               = "Active"
                          suggestedBucketSize = "120000000000"
                          type                = "gauge"
                          unit                = "percent(0-100)"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = false
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSEC2CPUUtilizationmax_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-3pal6def"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-tx4mkx2x",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-9lazxmd9"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSEC2CPUUtilizationmax_sum:max(m(\"AWS/EC2/CPUUtilization.max\"))",
                "aggregate A_AWSEC2CPUUtilizationmax_sum:sum(A_AWSEC2CPUUtilizationmax_sum), group_by(^Resource...)",
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
            thumbnailId   = "u14qnlvd"
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSEC2CPUUtilizationmax_sum:max(m("AWS/EC2/CPUUtilization.max"))
                    aggregate A_AWSEC2CPUUtilizationmax_sum:sum(A_AWSEC2CPUUtilizationmax_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-ujsasteu"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/EC2/CPUUtilizationmax_from_AWS-Quickstart/Metrics"
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
              id          = "query-input-t18bnewq"
              inputName   = "AWS/EC2/CPUUtilizationmax_from_AWS-Quickstart/Metrics"
              inputRole   = "Data"
              isUserInput = true
            },
            {
              id          = "query-input-4gzzk35z"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-w4hr9492"
            },
          ]
          isInternal = false
          label      = "Max CPU Utilization by Instance Type (Top 50)"
          managers = [
            {
              id         = "9d9xpse3"
              isDisabled = false
              type       = "Vis"
              vis = {
                config = {
                  cohort = "groupBy"
                  colorScaleConfig = {
                    bounds = {
                      end   = 100
                      start = 0
                    }
                    colorScaleType         = "Diverging"
                    divergingColorScale    = "RdYlGn"
                    divergingScaleMidpoint = 50
                    sequentialColorScale   = "Inferno"
                  }
                  nodeColorConfigType = "Threshold"
                  nodeColorField      = "cpuUtil"
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
                  nodeInnerTextField = "cpuUtil"
                  nodeInnerTextUnit  = "percent (0-100)"
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
              customSummary = "AWS/EC2/CPUUtilizationmax_from_AWS-Quickstart/Metrics"
              id            = "step-6gpbn6vz"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-2pr4dldg"
              index         = 1
              isPinned      = false
              opal = [
                "lookup ^Resource, \"Configuration\": ^Resource.Configuration",
                "filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align options(bins:1),",
                "  cpuUtil:max(m(\"AWS/EC2/CPUUtilization.max\"))",
                "aggregate",
                "  cpuUtil:max(cpuUtil),",
                "  group_by(^Resource...)",
                "",
                "topk 50, max(cpuUtil)",
                "lookup ^Resource, \"Configuration\": ^Resource.Configuration",
                "",
                "make_col",
                "  VpcId:string(Configuration.vpcId),",
                "  SubnetId:string(Configuration.subnetId),",
                "  ImageId:string(Configuration.imageId),",
                "  Architecture:string(Configuration.architecture),",
                "  InstanceType:string(Configuration.instanceType),",
                "  State:string(Configuration.state.name)",
                "",
                "make_col groupBy:case(",
                "  $groupBy=\"VpcId\", VpcId,",
                "  $groupBy=\"SubnetId\", SubnetId,",
                "  $groupBy=\"ImageId\", ImageId,",
                "  $groupBy=\"Architecture\", Architecture,",
                "  $groupBy=\"InstanceType\", InstanceType,",
                "  $groupBy=\"State\", State,",
                "  true, InstanceType",
                ")",
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
            stageOutputHeight = 58.49802371541502
            stageTab          = "vis"
          }
        }
        params   = null
        pipeline = <<-EOT
                    lookup ^Resource, "Configuration": ^Resource.Configuration
                    filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align options(bins:1),
                      cpuUtil:max(m("AWS/EC2/CPUUtilization.max"))
                    aggregate
                      cpuUtil:max(cpuUtil),
                      group_by(^Resource...)
                    
                    topk 50, max(cpuUtil)
                    lookup ^Resource, "Configuration": ^Resource.Configuration
                    
                    make_col
                      VpcId:string(Configuration.vpcId),
                      SubnetId:string(Configuration.subnetId),
                      ImageId:string(Configuration.imageId),
                      Architecture:string(Configuration.architecture),
                      InstanceType:string(Configuration.instanceType),
                      State:string(Configuration.state.name)
                    
                    make_col groupBy:case(
                      $groupBy="VpcId", VpcId,
                      $groupBy="SubnetId", SubnetId,
                      $groupBy="ImageId", ImageId,
                      $groupBy="Architecture", Architecture,
                      $groupBy="InstanceType", InstanceType,
                      $groupBy="State", State,
                      true, InstanceType
                    )
                EOT
      },
      {
        id = "stage-c6z3vdei"
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
          index         = 2
          inputList = [
            {
              id          = "query-input-cq648gpe"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = false
              parameterId = "input-parameter-w4hr9492"
            },
          ]
          isInternal = false
          managers = [
            {
              id         = "1ehlhrbw"
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
                    k     = 100
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
              customSummary = "AWS Asset Inventory"
              id            = "step-9vnxk5ks"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-9jyupos8"
              index         = 1
              isPinned      = false
              opal = [
                "timechart options(empty_bins:true), A_AWSAssetInventory_count_distinct_exact:count(), group_by()",
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
            thumbnailId   = "500723bn"
          }
        }
        params   = null
        pipeline = "timechart options(empty_bins:true), A_AWSAssetInventory_count_distinct_exact:count(), group_by()"
      },
      {
        id = "stage-re6fd8fx"
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
          index         = 3
          inputList     = []
          isInternal    = false
          label         = "Instances by Type"
          managers = [
            {
              id         = "1s8hj1qo"
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
                    valueField    = "A_AWSAssetInventory_count_distinct_exact"
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
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_AWSAssetInventory_count_distinct_exact"
              },
            ]
            wantBuckets = 1
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = ""
              id            = "step-wux4x5if"
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
                              valueField    = "A_AWSAssetInventory_count_distinct_exact"
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
                        field                = "***row***"
                        filterActions        = []
                        groupBy = [
                          {
                            id   = "Configuration"
                            path = "instanceType"
                          },
                        ]
                        id = "datasetQueryExpression-0ki2am9n"
                        inputSource = {
                          parameterId = "input-parameter-w4hr9492"
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
                      id                     = "multiExpression-n4kzwmcx"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "datasetQueryExpression-0ki2am9n",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-tcj4i11l"
              index         = 1
              isPinned      = false
              opal = [
                "timechart options(empty_bins:true), A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by(Configuration.instanceType)",
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
            thumbnailId   = "wwrgxtp0"
          }
        }
        params   = null
        pipeline = "timechart options(empty_bins:true), A_AWSAssetInventory_count_distinct_exact:count_distinct_exact(AccountID, Region, Service, ID), group_by(Configuration.instanceType)"
      },
      {
        id = "stage-wkyrd3yv"
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
          index         = 4
          inputList = [
            {
              id          = "query-input-qfkcxgr8"
              inputName   = "AWS Asset Inventory"
              inputRole   = "Data"
              isUserInput = true
              parameterId = "input-parameter-w4hr9492"
            },
          ]
          isInternal = false
          label      = "Instances by State"
          managers = [
            {
              id         = "gc9ja85o"
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
                  topK = {
                    k     = 100
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
            rollup = {}
            sort = [
              {
                ascending  = false
                columnName = "A_AWSAssetInventory_count_distinct_exact"
              },
            ]
            wantBuckets = 1
          }
          serializable = true
          steps = [
            {
              customName    = "Input"
              customSummary = "AWS Asset Inventory"
              id            = "step-bsi5euzj"
              index         = 0
              isPinned      = false
              opal          = []
              type          = "InputStep"
            },
            {
              customSummary = ""
              id            = "step-z9k1wjmy"
              index         = 1
              isPinned      = false
              opal = [
                "make_col state:string(Configuration.state.name)",
                "timechart count:count_distinct_exact(AccountID, Region, Service, ID), group_by(state)",
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
            thumbnailId   = "gjmvidd7"
          }
        }
        params   = null
        pipeline = <<-EOT
                    make_col state:string(Configuration.state.name)
                    timechart count:count_distinct_exact(AccountID, Region, Service, ID), group_by(state)
                EOT
      },
      {
        id = "stage-mkg9ctav"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/EC2/DiskReadBytessum_from_AWS-Quickstart/Metrics"
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
          label         = "Disk Read Bytes Per Second"
          managers = [
            {
              id         = "afc6rc3w"
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
                    y             = "A_AWSEC2DiskReadBytessum_sum"
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
              id            = "step-th39s00e"
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
                              y             = "A_AWSEC2DiskReadBytessum_sum"
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
                                InstanceId = false
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
                                  parameterId = "input-parameter-w4hr9492"
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
                            lastReported = "2024-09-06T17:15:00Z"
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
                          name                = "AWS/EC2/DiskReadBytes.sum"
                          nameWithPath        = "AWS/EC2/DiskReadBytes.sum (AWS-Quickstart/Metrics)"
                          rollup              = "rate"
                          state               = "Active"
                          suggestedBucketSize = "300000000000"
                          type                = "gauge"
                          unit                = "By"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = false
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSEC2DiskReadBytessum_sum"
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
              id            = "step-llx0e258"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSEC2DiskReadBytessum_sum:rate(m(\"AWS/EC2/DiskReadBytes.sum\"))",
                "aggregate A_AWSEC2DiskReadBytessum_sum:sum(A_AWSEC2DiskReadBytessum_sum), group_by(^Resource...)",
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
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSEC2DiskReadBytessum_sum:rate(m("AWS/EC2/DiskReadBytes.sum"))
                    aggregate A_AWSEC2DiskReadBytessum_sum:sum(A_AWSEC2DiskReadBytessum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-ys87re87"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/EC2/DiskWriteBytessum_from_AWS-Quickstart/Metrics"
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
          label         = "Disk Write Bytes Per Second"
          managers = [
            {
              id         = "zf4shdlr"
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
                    y             = "A_AWSEC2DiskWriteBytessum_sum"
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
              id            = "step-1hnf70jb"
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
                              y             = "A_AWSEC2DiskWriteBytessum_sum"
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
                                InstanceId = false
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
                                  parameterId = "input-parameter-w4hr9492"
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
                            lastReported = "2024-09-06T17:55:00Z"
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
                          name                = "AWS/EC2/DiskWriteBytes.sum"
                          nameWithPath        = "AWS/EC2/DiskWriteBytes.sum (AWS-Quickstart/Metrics)"
                          rollup              = "rate"
                          state               = "Active"
                          suggestedBucketSize = "300000000000"
                          type                = "gauge"
                          unit                = "By"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = false
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSEC2DiskWriteBytessum_sum"
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
              id            = "step-me7fuk0b"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSEC2DiskWriteBytessum_sum:rate(m(\"AWS/EC2/DiskWriteBytes.sum\"))",
                "aggregate A_AWSEC2DiskWriteBytessum_sum:sum(A_AWSEC2DiskWriteBytessum_sum), group_by(^Resource...)",
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
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSEC2DiskWriteBytessum_sum:rate(m("AWS/EC2/DiskWriteBytes.sum"))
                    aggregate A_AWSEC2DiskWriteBytessum_sum:sum(A_AWSEC2DiskWriteBytessum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-n9h5zrmj"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/EC2/NetworkInsum_from_AWS-Quickstart/Metrics"
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
          label         = "Network-In Per Second"
          managers = [
            {
              id         = "rq6dv445"
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
                    y             = "A_AWSEC2NetworkInsum_sum"
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
              id            = "step-8ve1caek"
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
                              y             = "A_AWSEC2NetworkInsum_sum"
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
                                InstanceId = false
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
                                  parameterId = "input-parameter-w4hr9492"
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
                        id             = "metricExpression-ffrhn2if"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-09-06T18:02:00Z"
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
                                path   = "InstanceId"
                              },
                              {
                                column = "dimensions"
                                path   = "AutoScalingGroupName"
                              },
                              {
                                column = "dimensions"
                                path   = "ImageId"
                              },
                              {
                                column = "dimensions"
                                path   = "InstanceType"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/EC2/NetworkIn.sum"
                          nameWithPath        = "AWS/EC2/NetworkIn.sum (AWS-Quickstart/Metrics)"
                          rollup              = "rate"
                          state               = "Active"
                          suggestedBucketSize = "120000000000"
                          type                = "gauge"
                          unit                = "By"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = false
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSEC2NetworkInsum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-19d5p4vq"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-ffrhn2if",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-i9nbuohv"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSEC2NetworkInsum_sum:rate(m(\"AWS/EC2/NetworkIn.sum\"))",
                "aggregate A_AWSEC2NetworkInsum_sum:sum(A_AWSEC2NetworkInsum_sum), group_by(^Resource...)",
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
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSEC2NetworkInsum_sum:rate(m("AWS/EC2/NetworkIn.sum"))
                    aggregate A_AWSEC2NetworkInsum_sum:sum(A_AWSEC2NetworkInsum_sum), group_by(^Resource...)
                EOT
      },
      {
        id = "stage-gfwioheu"
        input = [
          {
            datasetId   = local.metrics
            datasetPath = null
            inputName   = "AWS/EC2/NetworkOutsum_from_AWS-Quickstart/Metrics"
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
          label         = "Network-Out Per Second"
          managers = [
            {
              id         = "fa4t777x"
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
                    y             = "A_AWSEC2NetworkOutsum_sum"
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
              id            = "step-jgbnzceu"
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
                              y             = "A_AWSEC2NetworkOutsum_sum"
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
                                InstanceId = false
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
                                  parameterId = "input-parameter-w4hr9492"
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
                        id             = "metricExpression-ffrhn2if"
                        invalidGroupBy = []
                        lookupActions  = []
                        metric = {
                          aggregate   = "sum"
                          datasetId   = local.metrics
                          description = "Auto Detected Metric"
                          heuristics = {
                            lastReported = "2024-09-06T18:02:00Z"
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
                                path   = "InstanceId"
                              },
                              {
                                column = "dimensions"
                                path   = "AutoScalingGroupName"
                              },
                              {
                                column = "dimensions"
                                path   = "ImageId"
                              },
                              {
                                column = "dimensions"
                                path   = "InstanceType"
                              },
                            ]
                            validLinkLabels = [
                              "Resource",
                            ]
                          }
                          name                = "AWS/EC2/NetworkOut.sum"
                          nameWithPath        = "AWS/EC2/NetworkOut.sum (AWS-Quickstart/Metrics)"
                          rollup              = "rate"
                          state               = "Active"
                          suggestedBucketSize = "120000000000"
                          type                = "gauge"
                          unit                = "By"
                          userDefined         = false
                        }
                        noDataVisBindingUpdate = false
                        showAlignment          = false
                        showResolution         = false
                        summaryMode            = "over-time"
                        type                   = "metricExpression"
                        valueColumnId          = "A_AWSEC2NetworkOutsum_sum"
                        viewTab                = "visualize"
                      },
                    ]
                    multiExpression = {
                      expressionIdentifier   = "A"
                      filterActions          = []
                      id                     = "multiExpression-19d5p4vq"
                      lookupActions          = []
                      noDataVisBindingUpdate = false
                      type                   = "multiExpression"
                      viewTab                = "visualize"
                    }
                    selectedExpressionIds = [
                      "metricExpression-ffrhn2if",
                    ]
                    shouldLimitPatterns = true
                  }
                }
                summary = null
                type    = "ExpressionBuilder"
              }
              customSummary = "Expression Builder"
              id            = "step-r8ky3by8"
              index         = 1
              isPinned      = false
              opal = [
                "filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json(\"null\")))",
                "exists account_id = @\"AWS Asset Inventory\".AccountID, region = @\"AWS Asset Inventory\".Region, service = @\"AWS Asset Inventory\".Service, resourceId = @\"AWS Asset Inventory\".ID",
                "align A_AWSEC2NetworkOutsum_sum:rate(m(\"AWS/EC2/NetworkOut.sum\"))",
                "aggregate A_AWSEC2NetworkOutsum_sum:sum(A_AWSEC2NetworkOutsum_sum), group_by(^Resource...)",
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
          }
        }
        params   = null
        pipeline = <<-EOT
                    filter (not (is_null(dimensions.InstanceId) or dimensions.InstanceId = parse_json("null")))
                    exists account_id = @"AWS Asset Inventory".AccountID, region = @"AWS Asset Inventory".Region, service = @"AWS Asset Inventory".Service, resourceId = @"AWS Asset Inventory".ID
                    align A_AWSEC2NetworkOutsum_sum:rate(m("AWS/EC2/NetworkOut.sum"))
                    aggregate A_AWSEC2NetworkOutsum_sum:sum(A_AWSEC2NetworkOutsum_sum), group_by(^Resource...)
                EOT
      },
    ]
  )
  workspace = local.workspace
}

