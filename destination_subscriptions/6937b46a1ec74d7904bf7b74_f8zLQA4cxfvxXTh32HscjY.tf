import {
  to = segment_destination_subscription.id-6937b46a1ec74d7904bf7b74_f8zLQA4cxfvxXTh32HscjY
  id = "6937b46a1ec74d7904bf7b74:f8zLQA4cxfvxXTh32HscjY"
}

resource "segment_destination_subscription" "id-6937b46a1ec74d7904bf7b74_f8zLQA4cxfvxXTh32HscjY" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "6937b46a1ec74d7904bf7b74"
  enabled        = false
  model_id       = "3hhwqr7WDqi826GTWChcSv"
  name           = "Entity subscription"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({})
  trigger  = "event = \"new\" or event = \"updated\" or event = \"deleted\""
}