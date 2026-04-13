import {
  to = segment_destination_subscription.id-687637df7d74648397fb35c6_9hdo5WyxpTRiBjvPD6Hu2B
  id = "687637df7d74648397fb35c6:9hdo5WyxpTRiBjvPD6Hu2B"
}

resource "segment_destination_subscription" "id-687637df7d74648397fb35c6_9hdo5WyxpTRiBjvPD6Hu2B" {
  action_id            = "s7FEfD963drbt4mBbnUxfR"
  destination_id       = "687637df7d74648397fb35c6"
  enabled              = true
  model_id             = null
  name                 = "Create or Update Device"
  reverse_etl_schedule = null
  settings = jsonencode({
    app_version = {
      "@path" = "$.context.app.version"
    }
    attributes = {
      "@path" = "$.properties"
    }
    convert_timestamp = true
    device_id = {
      "@path" = "$.context.device.token"
    }
    last_used = {
      "@path" = "$.timestamp"
    }
    person_id = {
      "@path" = "$.userId"
    }
    platform = {
      "@path" = "$.context.device.type"
    }
  })
  trigger = "event = \"Application Installed\" or event = \"Application Opened\""
}