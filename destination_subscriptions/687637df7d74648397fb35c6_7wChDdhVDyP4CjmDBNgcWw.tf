import {
  to = segment_destination_subscription.id-687637df7d74648397fb35c6_7wChDdhVDyP4CjmDBNgcWw
  id = "687637df7d74648397fb35c6:7wChDdhVDyP4CjmDBNgcWw"
}

resource "segment_destination_subscription" "id-687637df7d74648397fb35c6_7wChDdhVDyP4CjmDBNgcWw" {
  action_id            = "vzu3gQU4FWnjjjwLrZ92v"
  destination_id       = "687637df7d74648397fb35c6"
  enabled              = true
  model_id             = null
  name                 = "Report Delivery Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    action_name = {
      "@path" = "$.properties.actionName"
    }
    action_value = {
      "@path" = "$.properties.actionValue"
    }
    delivery_id = {
      "@path" = "$.properties.deliveryId"
    }
    href = {
      "@path" = "$.properties.href"
    }
    metric = {
      "@path" = "$.properties.metric"
    }
    reason = {
      "@path" = "$.properties.reason"
    }
    recipient = {
      "@path" = "$.properties.recipient"
    }
    timestamp = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "event = \"Report Delivery Event\""
}