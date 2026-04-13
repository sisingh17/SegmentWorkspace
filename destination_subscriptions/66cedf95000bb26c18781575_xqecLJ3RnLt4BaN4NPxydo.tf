import {
  to = segment_destination_subscription.id-66cedf95000bb26c18781575_xqecLJ3RnLt4BaN4NPxydo
  id = "66cedf95000bb26c18781575:xqecLJ3RnLt4BaN4NPxydo"
}

resource "segment_destination_subscription" "id-66cedf95000bb26c18781575_xqecLJ3RnLt4BaN4NPxydo" {
  action_id      = "ujsJxBdpg7XkYwKSKREnQt"
  destination_id = "66cedf95000bb26c18781575"
  enabled        = true
  model_id       = "6Rw7HrzUyCLQBNqrM5979E"
  name           = "Send Track"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    anonymous_id = {
      "@path" = "$.properties.ANONYMOUS_ID"
    }
    consent = {
      "@path" = "$.context.consent"
    }
    engage_space = "HLo4mAQkqkgQlEyE7tg0oYNC6UMB6IzY"
    event_name = {
      "@path" = "$.properties.EVENT_TEXT"
    }
    message_id = {
      "@path" = "$.messageId"
    }
    properties = {
      "@path" = "$.properties"
    }
    timestamp = {
      "@path" = "$.properties.TIMESTAMP"
    }
    user_id = {
      "@path" = "$.properties.USER_ID"
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}