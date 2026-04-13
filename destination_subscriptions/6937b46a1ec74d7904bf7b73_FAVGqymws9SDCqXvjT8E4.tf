import {
  to = segment_destination_subscription.id-6937b46a1ec74d7904bf7b73_FAVGqymws9SDCqXvjT8E4
  id = "6937b46a1ec74d7904bf7b73:FAVGqymws9SDCqXvjT8E4"
}

resource "segment_destination_subscription" "id-6937b46a1ec74d7904bf7b73_FAVGqymws9SDCqXvjT8E4" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "6937b46a1ec74d7904bf7b73"
  enabled        = false
  model_id       = "s88Y5W2R6sfArQDteHphM6"
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