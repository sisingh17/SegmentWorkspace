import {
  to = segment_destination_subscription.id-689db62df2069c2ffa8f1110_3ffuP9x7qA5XBE9VwWXvq5
  id = "689db62df2069c2ffa8f1110:3ffuP9x7qA5XBE9VwWXvq5"
}

resource "segment_destination_subscription" "id-689db62df2069c2ffa8f1110_3ffuP9x7qA5XBE9VwWXvq5" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "689db62df2069c2ffa8f1110"
  enabled              = true
  model_id             = null
  name                 = "Example Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    data = {
      "@path" = "$."
    }
    method = "POST"
    url    = "https://webhook.site/7bc93cf4-8f3e-498c-8065-bf90a99f19df"
  })
  trigger = "event = \"Example Event\""
}