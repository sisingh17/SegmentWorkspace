import {
  to = segment_destination_subscription.id-687637df7d74648397fb35c6_uC7HrfsLv9r1ptzfaEQCyX
  id = "687637df7d74648397fb35c6:uC7HrfsLv9r1ptzfaEQCyX"
}

resource "segment_destination_subscription" "id-687637df7d74648397fb35c6_uC7HrfsLv9r1ptzfaEQCyX" {
  action_id            = "sqJbxd67L97ZpX6N8wphL3"
  destination_id       = "687637df7d74648397fb35c6"
  enabled              = true
  model_id             = null
  name                 = "Track Screen View"
  reverse_etl_schedule = null
  settings = jsonencode({
    anonymous_id = {
      "@path" = "$.anonymousId"
    }
    convert_timestamp = true
    data = {
      "@path" = "$.properties"
    }
    event_id = {
      "@path" = "$.messageId"
    }
    id = {
      "@path" = "$.userId"
    }
    name = {
      "@path" = "$.name"
    }
    timestamp = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"screen\""
}