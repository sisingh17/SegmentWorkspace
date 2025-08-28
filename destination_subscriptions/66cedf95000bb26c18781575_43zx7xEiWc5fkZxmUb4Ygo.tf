import {
  to = segment_destination_subscription.id-66cedf95000bb26c18781575_43zx7xEiWc5fkZxmUb4Ygo
  id = "66cedf95000bb26c18781575:43zx7xEiWc5fkZxmUb4Ygo"
}

resource "segment_destination_subscription" "id-66cedf95000bb26c18781575_43zx7xEiWc5fkZxmUb4Ygo" {
  action_id      = "vm2tNA5U1zxUusQkdC4D7Z"
  destination_id = "66cedf95000bb26c18781575"
  enabled        = true
  model_id       = "3FRWs4RZLKPSbmSgh6bSMK"
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
      "@path" = "$.__segment_id"
    }
  })
  trigger = "event = \"deleted\""
}