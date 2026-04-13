import {
  to = segment_destination_subscription.id-6686ae06c8dc079b6369562c_mCErp257g5Yv2gEu9feu2v
  id = "6686ae06c8dc079b6369562c:mCErp257g5Yv2gEu9feu2v"
}

resource "segment_destination_subscription" "id-6686ae06c8dc079b6369562c_mCErp257g5Yv2gEu9feu2v" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "6686ae06c8dc079b6369562c"
  enabled              = true
  model_id             = null
  name                 = "Track Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    email = {
      "@path" = "$.traits.email"
    }
    enable_batching = true
    external_id = {
      "@path" = "$.userId"
    }
    name = {
      "@path" = "$.event"
    }
    time = {
      "@path" = "$.receivedAt"
    }
    user_alias = {
      "@path" = "$.traits"
    }
  })
  trigger = "type = \"track\""
}