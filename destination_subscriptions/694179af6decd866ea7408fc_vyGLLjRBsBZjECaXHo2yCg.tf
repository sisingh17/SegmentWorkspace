import {
  to = segment_destination_subscription.id-694179af6decd866ea7408fc_vyGLLjRBsBZjECaXHo2yCg
  id = "694179af6decd866ea7408fc:vyGLLjRBsBZjECaXHo2yCg"
}

resource "segment_destination_subscription" "id-694179af6decd866ea7408fc_vyGLLjRBsBZjECaXHo2yCg" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "694179af6decd866ea7408fc"
  enabled        = true
  model_id       = "9k2riiZekrZzcKDPQAEH3T"
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