import {
  to = segment_destination_subscription.id-689db62df2069c2ffa8f1110_9HXtW1FQkJvn7YdZLa428u
  id = "689db62df2069c2ffa8f1110:9HXtW1FQkJvn7YdZLa428u"
}

resource "segment_destination_subscription" "id-689db62df2069c2ffa8f1110_9HXtW1FQkJvn7YdZLa428u" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "689db62df2069c2ffa8f1110"
  enabled              = true
  model_id             = null
  name                 = "Send Tracks"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    data = {
      "@path" = "$."
    }
    headers = {
      Authorization = "Basic SDEzc2p6dmRvdlAxV0x4eHpMb1dCaW9LbWV3WXh3SGI6"
      Content-Type  = "application/json"
    }
    method = "POST"
    url    = "https://api.segment.io/v1/track"
  })
  trigger = "type = \"track\""
}