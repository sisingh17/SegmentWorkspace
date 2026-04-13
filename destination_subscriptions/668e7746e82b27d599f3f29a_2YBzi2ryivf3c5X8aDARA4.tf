import {
  to = segment_destination_subscription.id-668e7746e82b27d599f3f29a_2YBzi2ryivf3c5X8aDARA4
  id = "668e7746e82b27d599f3f29a:2YBzi2ryivf3c5X8aDARA4"
}

resource "segment_destination_subscription" "id-668e7746e82b27d599f3f29a_2YBzi2ryivf3c5X8aDARA4" {
  action_id      = "vm2tNA5U1zxUusQkdC4D7Z"
  destination_id = "668e7746e82b27d599f3f29a"
  enabled        = false
  model_id       = "gGyUdsADu8W9qPu5m1xFm4"
  name           = "Send Identify"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    consent = {
      "@path" = "$.context.consent"
    }
    engage_space = "HLo4mAQkqkgQlEyE7tg0oYNC6UMB6IzY"
    message_id = {
      "@path" = "$.messageId"
    }
    user_id = {
      "@path" = "$.__segment_id"
    }
  })
  trigger = "event = \"new\""
}