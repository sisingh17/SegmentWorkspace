import {
  to = segment_destination_subscription.id-6731feace95d03f7ed3c2989_pmhAbU3udbomh5sfNzVqq6
  id = "6731feace95d03f7ed3c2989:pmhAbU3udbomh5sfNzVqq6"
}

resource "segment_destination_subscription" "id-6731feace95d03f7ed3c2989_pmhAbU3udbomh5sfNzVqq6" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "6731feace95d03f7ed3c2989"
  enabled        = false
  model_id       = "btAKRDBVELvA5SHxnhKQcj"
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