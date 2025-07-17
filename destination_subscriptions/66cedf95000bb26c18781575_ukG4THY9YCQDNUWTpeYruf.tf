import {
  to = segment_destination_subscription.id-66cedf95000bb26c18781575_ukG4THY9YCQDNUWTpeYruf
  id = "66cedf95000bb26c18781575:ukG4THY9YCQDNUWTpeYruf"
}

resource "segment_destination_subscription" "id-66cedf95000bb26c18781575_ukG4THY9YCQDNUWTpeYruf" {
  action_id      = "ujsJxBdpg7XkYwKSKREnQt"
  destination_id = "66cedf95000bb26c18781575"
  enabled        = true
  model_id       = "wPseeT1NTUXdywnkxxgfVM"
  name           = "Send Track"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "12h"
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
  })
  trigger = "event = \"new\" or event = \"updated\""
}