import {
  to = segment_destination_subscription.id-687637df7d74648397fb35c6_2XjK3HEFtHojvJ6PWXy3Jn
  id = "687637df7d74648397fb35c6:2XjK3HEFtHojvJ6PWXy3Jn"
}

resource "segment_destination_subscription" "id-687637df7d74648397fb35c6_2XjK3HEFtHojvJ6PWXy3Jn" {
  action_id            = "gEdBnya7kEtPMikFwsdvV"
  destination_id       = "687637df7d74648397fb35c6"
  enabled              = true
  model_id             = null
  name                 = "Report Content Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    actionType = {
      "@path" = "$.properties.actionType"
    }
    anonymous_id = {
      "@path" = "$.anonymousId"
    }
    convert_timestamp = true
    data = {
      "@path" = "$.properties"
    }
    timestamp = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "event = \"Report Content Event\""
}