import {
  to = segment_destination_subscription.id-66cedf95000bb26c18781575_nPWXMHUUBz795cL9wkFBZ2
  id = "66cedf95000bb26c18781575:nPWXMHUUBz795cL9wkFBZ2"
}

resource "segment_destination_subscription" "id-66cedf95000bb26c18781575_nPWXMHUUBz795cL9wkFBZ2" {
  action_id      = "vm2tNA5U1zxUusQkdC4D7Z"
  destination_id = "66cedf95000bb26c18781575"
  enabled        = true
  model_id       = "hy56uCGDRMV8aZGmS5a58L"
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
    engage_space = "CiIMUu7S30QQYrnN0TAlKnhiaHv4QyVd"
    message_id = {
      "@path" = "$.messageId"
    }
    traits = {
      ACCOUNT_ID = {
        "@path" = "$.properties.CONTEXT_GROUP_ID"
      }
      ACCOUNT_TYPE = {
        "@path" = "$.properties.ACCOUNT_TYPE"
      }
    }
    user_id = {
      "@path" = "$.__segment_id"
    }
  })
  trigger = "event = \"new\" or event = \"updated\" or event = \"deleted\""
}