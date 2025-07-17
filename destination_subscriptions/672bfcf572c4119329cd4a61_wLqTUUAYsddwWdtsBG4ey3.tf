import {
  to = segment_destination_subscription.id-672bfcf572c4119329cd4a61_wLqTUUAYsddwWdtsBG4ey3
  id = "672bfcf572c4119329cd4a61:wLqTUUAYsddwWdtsBG4ey3"
}

resource "segment_destination_subscription" "id-672bfcf572c4119329cd4a61_wLqTUUAYsddwWdtsBG4ey3" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "672bfcf572c4119329cd4a61"
  enabled        = true
  model_id       = "nEMbtmRLEhfP5s4F7tz9DE"
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