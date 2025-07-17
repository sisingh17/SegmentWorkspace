import {
  to = segment_destination_subscription.id-672bfcf572c4119329cd4a60_eFpJr55UVq6pj2GojnTuNk
  id = "672bfcf572c4119329cd4a60:eFpJr55UVq6pj2GojnTuNk"
}

resource "segment_destination_subscription" "id-672bfcf572c4119329cd4a60_eFpJr55UVq6pj2GojnTuNk" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "672bfcf572c4119329cd4a60"
  enabled        = false
  model_id       = "ePkoA94ymKQEu7K3XFkVsT"
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