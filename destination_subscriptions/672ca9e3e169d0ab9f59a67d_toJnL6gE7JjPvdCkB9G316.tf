import {
  to = segment_destination_subscription.id-672ca9e3e169d0ab9f59a67d_toJnL6gE7JjPvdCkB9G316
  id = "672ca9e3e169d0ab9f59a67d:toJnL6gE7JjPvdCkB9G316"
}

resource "segment_destination_subscription" "id-672ca9e3e169d0ab9f59a67d_toJnL6gE7JjPvdCkB9G316" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "672ca9e3e169d0ab9f59a67d"
  enabled        = true
  model_id       = "21fyAXpWrRAjuNAQB7yVYm"
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