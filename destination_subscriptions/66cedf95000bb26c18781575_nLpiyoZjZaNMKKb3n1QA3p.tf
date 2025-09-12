import {
  to = segment_destination_subscription.id-66cedf95000bb26c18781575_nLpiyoZjZaNMKKb3n1QA3p
  id = "66cedf95000bb26c18781575:nLpiyoZjZaNMKKb3n1QA3p"
}

resource "segment_destination_subscription" "id-66cedf95000bb26c18781575_nLpiyoZjZaNMKKb3n1QA3p" {
  action_id      = "vm2tNA5U1zxUusQkdC4D7Z"
  destination_id = "66cedf95000bb26c18781575"
  enabled        = true
  model_id       = "ry775fNRNXCBfmkFkXEzq8"
  name           = "Send Identify"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "15m"
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
        "@path" = "$.properties.ID"
      }
    }
    user_id = {
      "@path" = "$.properties.USER_ID"
    }
  })
  trigger = "event = \"new\" or event = \"updated\" or event = \"deleted\""
}