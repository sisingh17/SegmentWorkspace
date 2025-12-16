import {
  to = segment_destination_subscription.id-69394149f28c4a7c390d25e0_fySKx5Z14gQdeBfieELykQ
  id = "69394149f28c4a7c390d25e0:fySKx5Z14gQdeBfieELykQ"
}

resource "segment_destination_subscription" "id-69394149f28c4a7c390d25e0_fySKx5Z14gQdeBfieELykQ" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "69394149f28c4a7c390d25e0"
  enabled              = true
  model_id             = null
  name                 = "Send Events"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    data = {
      traits = {
        address = {
          "@path" = "$.__segment_entities.testing.profile_traits_flattened.ADDRESS"
        }
        email = {
          "@path" = "$.traits.email"
        }
      }
      type = {
        "@path" = "$.type"
      }
      userId = {
        "@path" = "$.userId"
      }
    }
    method = "POST"
    url    = "https://fn.eu1.segmentapis.com/?b=cHpNZzRuUVJ4Rzc1QmRKaUNtcHdqNDo6dVg5Y0lYU2NKdVpkbDNOWkwzNENDYzBVdXp1NlgxSVU="
  })
  trigger = "type = \"track\" or type = \"identify\" or type = \"group\" or type = \"page\""
}