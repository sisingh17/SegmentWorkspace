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
      "@path" = "$."
    }
    headers = {
      Authorization = "Basic bWh5SWk0RlN6VkJVRlkwNG0yajBuQjYxWEFEbUd5TEM6"
      Content-Type  = "application/json"
    }
    method = "POST"
    url    = "https://api.segment.io/v1/track"
  })
  trigger = "type = \"track\""
}