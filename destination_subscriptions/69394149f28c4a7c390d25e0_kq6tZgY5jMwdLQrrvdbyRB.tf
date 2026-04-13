import {
  to = segment_destination_subscription.id-69394149f28c4a7c390d25e0_kq6tZgY5jMwdLQrrvdbyRB
  id = "69394149f28c4a7c390d25e0:kq6tZgY5jMwdLQrrvdbyRB"
}

resource "segment_destination_subscription" "id-69394149f28c4a7c390d25e0_kq6tZgY5jMwdLQrrvdbyRB" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "69394149f28c4a7c390d25e0"
  enabled              = true
  model_id             = null
  name                 = "Send Identify"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    data = {
      traits = {
        email = {
          "@path" = "$.traits.email"
        }
        phone = {
          "@path" = "$.__segment_entities.testing.profile_traits_le.PHONE"
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
  trigger = "type = \"identify\""
}