import {
  to = segment_destination_subscription.id-68bffefa68b24cd67420fa24_rG2ukGiCtmFuTpT1yucBFr
  id = "68bffefa68b24cd67420fa24:rG2ukGiCtmFuTpT1yucBFr"
}

resource "segment_destination_subscription" "id-68bffefa68b24cd67420fa24_rG2ukGiCtmFuTpT1yucBFr" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "68bffefa68b24cd67420fa24"
  enabled              = false
  model_id             = null
  name                 = "Track Event - Profile enters audience"
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
    _update_existing_only = false
    batch_size            = 75
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    email = {
      "@if" = {
        else = {
          "@path" = "$.properties.email"
        }
        exists = {
          "@path" = "$.context.traits.email"
        }
        then = {
          "@path" = "$.context.traits.email"
        }
      }
    }
    enable_batching = true
    external_id = {
      "@path" = "$.userId"
    }
    name = {
      "@path" = "$.event"
    }
    properties = {
      first_name = {
        "@path" = "$.properties.first_name"
      }
      last_name = {
        "@path" = "$.properties.last_name"
      }
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "context.personas.event_emitter_id = \"ee_3DZbL9U9L9ekpGh0iYvJSal6fvZ\""
}