import {
  to = segment_destination_subscription.id-689db62df2069c2ffa8f1110_bXyhQPwUhWhz9fvpWvrMXX
  id = "689db62df2069c2ffa8f1110:bXyhQPwUhWhz9fvpWvrMXX"
}

resource "segment_destination_subscription" "id-689db62df2069c2ffa8f1110_bXyhQPwUhWhz9fvpWvrMXX" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "689db62df2069c2ffa8f1110"
  enabled              = true
  model_id             = null
  name                 = "Audience Webhook"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    data = {
      "@path" = "$."
    }
    method = "POST"
    url    = "https://webhook.site/7bc93cf4-8f3e-498c-8065-bf90a99f19df"
  })
  trigger = "event = \"Audience Entered\" or event = \"Audience Exited\""
}