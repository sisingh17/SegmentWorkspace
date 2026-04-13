import {
  to = segment_destination_subscription.id-68bffbf89e7a3e912e1dede8_9qdmNjTwawWCoutF3CaMHS
  id = "68bffbf89e7a3e912e1dede8:9qdmNjTwawWCoutF3CaMHS"
}

resource "segment_destination_subscription" "id-68bffbf89e7a3e912e1dede8_9qdmNjTwawWCoutF3CaMHS" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "68bffbf89e7a3e912e1dede8"
  enabled              = false
  model_id             = null
  name                 = "Send - Accounts matches audience criteria"
  reverse_etl_schedule = null
  settings = jsonencode({
    __segment_internal_directive = {
      "@transform" = {
        apply = {
          "@merge" = {
            direction = "right"
            objects = [{
              "@path" = "$."
              }, {
              properties = {
                "@merge" = {
                  direction = "right"
                  objects = [{
                    "@path" = "$.properties"
                    }, {
                    "@flatten" = {
                      omitArrays = true
                      separator  = "__"
                      value = {
                        "@path" = "$.properties.data_graph_entity_context"
                      }
                    }
                    }, {
                    data_graph_entity_context = {
                      "@path" = "$.doesnotexist"
                    }
                  }]
                }
              }
            }]
          }
        }
        mapping = {
          "@path" = "$."
        }
      }
    }
    batch_keys = ["url", "method", "headers"]
    batch_size = 0
    data = {
      "@path" = "$."
    }
    enable_batching = false
    method          = "POST"
  })
  trigger = "context.personas.event_emitter_id = \"ee_32SSOZMrYM7pVLS1pyKVmQV47WB\""
}