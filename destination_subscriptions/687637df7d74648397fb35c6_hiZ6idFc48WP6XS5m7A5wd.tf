import {
  to = segment_destination_subscription.id-687637df7d74648397fb35c6_hiZ6idFc48WP6XS5m7A5wd
  id = "687637df7d74648397fb35c6:hiZ6idFc48WP6XS5m7A5wd"
}

resource "segment_destination_subscription" "id-687637df7d74648397fb35c6_hiZ6idFc48WP6XS5m7A5wd" {
  action_id            = "ni61rg53jNVHceAAKpAMiU"
  destination_id       = "687637df7d74648397fb35c6"
  enabled              = true
  model_id             = null
  name                 = "Track Event"
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
      "@path" = "$.event"
    }
    timestamp = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "\n        type = \"track\"\n        and event != \"Relationship Deleted\"\n        and event != \"User Deleted\"\n        and event != \"User Suppressed\"\n        and event != \"User Unsuppressed\"\n        and event != \"Object Deleted\"\n        and event != \"Report Delivery Event\"\n        and event != \"Report Content Event\"\n      "
}