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
    method = "POST"
    url    = "https://webhook.site/2a09f3e3-f084-473b-bb20-05e19a37a21b"
  })
  trigger = "type = \"track\""
}