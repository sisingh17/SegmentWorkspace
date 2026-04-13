import {
  to = segment_destination_subscription.id-693bf4774c70fa42b3d524c8_eu3piRPueHczAwLkvvdxLG
  id = "693bf4774c70fa42b3d524c8:eu3piRPueHczAwLkvvdxLG"
}

resource "segment_destination_subscription" "id-693bf4774c70fa42b3d524c8_eu3piRPueHczAwLkvvdxLG" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "693bf4774c70fa42b3d524c8"
  enabled        = false
  model_id       = "onYj3MpQtgfNoynxcUfo45"
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