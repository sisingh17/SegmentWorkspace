import {
  to = segment_destination_subscription.id-66cedf95000bb26c18781575_kWMoVbGg8TxTDugmUyEo97
  id = "66cedf95000bb26c18781575:kWMoVbGg8TxTDugmUyEo97"
}

resource "segment_destination_subscription" "id-66cedf95000bb26c18781575_kWMoVbGg8TxTDugmUyEo97" {
  action_id      = "vm2tNA5U1zxUusQkdC4D7Z"
  destination_id = "66cedf95000bb26c18781575"
  enabled        = true
  model_id       = "oPPQHNc2jZspRjGqR7dSR7"
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
      "@path" = "$.properties"
    }
    user_id = {
      "@path" = "$.properties.USER_ID"
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}