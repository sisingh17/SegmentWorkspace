import {
  to = segment_destination_subscription.id-687637df7d74648397fb35c6_9gccmijqDNF2YYdnjwDczr
  id = "687637df7d74648397fb35c6:9gccmijqDNF2YYdnjwDczr"
}

resource "segment_destination_subscription" "id-687637df7d74648397fb35c6_9gccmijqDNF2YYdnjwDczr" {
  action_id            = "bYpBhuXizNTPeBLwoJ1RxZ"
  destination_id       = "687637df7d74648397fb35c6"
  enabled              = true
  model_id             = null
  name                 = "Track Page View"
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
    timestamp = {
      "@path" = "$.timestamp"
    }
    url = {
      "@path" = "$.properties.url"
    }
  })
  trigger = "type = \"page\""
}