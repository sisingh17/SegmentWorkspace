import {
  to = segment_destination_subscription.id-672bfd4620e60c4e7bd227c3_sYVdUKU7pVDtXWFCD9jsBg
  id = "672bfd4620e60c4e7bd227c3:sYVdUKU7pVDtXWFCD9jsBg"
}

resource "segment_destination_subscription" "id-672bfd4620e60c4e7bd227c3_sYVdUKU7pVDtXWFCD9jsBg" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "672bfd4620e60c4e7bd227c3"
  enabled              = true
  model_id             = null
  name                 = "Track Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size = 75
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
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "type = \"track\" and event != \"Order Completed\""
}