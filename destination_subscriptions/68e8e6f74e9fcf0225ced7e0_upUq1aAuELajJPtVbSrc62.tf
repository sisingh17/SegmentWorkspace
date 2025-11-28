import {
  to = segment_destination_subscription.id-68e8e6f74e9fcf0225ced7e0_upUq1aAuELajJPtVbSrc62
  id = "68e8e6f74e9fcf0225ced7e0:upUq1aAuELajJPtVbSrc62"
}

resource "segment_destination_subscription" "id-68e8e6f74e9fcf0225ced7e0_upUq1aAuELajJPtVbSrc62" {
  action_id            = "3MxuLcLqv1XvQS8iWuX3xZ"
  destination_id       = "68e8e6f74e9fcf0225ced7e0"
  enabled              = true
  model_id             = null
  name                 = "Customer Match User List - Accounts matches a"
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
    __segment_internal_sync_mode     = "add"
    ad_personalization_consent_state = "GRANTED"
    ad_user_data_consent_state       = "GRANTED"
    batch_size                       = 10000
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
    event_name = {
      "@path" = "$.event"
    }
    external_audience_id = {
      "@path" = "$.context.personas.external_audience_id"
    }
    external_id_type = "CONTACT_INFO"
    first_name = {
      "@if" = {
        else = {
          "@path" = "$.properties.firstName"
        }
        exists = {
          "@path" = "$.context.traits.firstName"
        }
        then = {
          "@path" = "$.context.traits.firstName"
        }
      }
    }
    last_name = {
      "@if" = {
        else = {
          "@path" = "$.properties.lastName"
        }
        exists = {
          "@path" = "$.context.traits.lastName"
        }
        then = {
          "@path" = "$.context.traits.lastName"
        }
      }
    }
    mobile_advertising_id = {
      "@path" = "$.context.device.advertisingId"
    }
  })
  trigger = "context.personas.event_emitter_id = \"ee_366Y9P1vRCA1w0RnDl3Y0ZiAGD9\""
}