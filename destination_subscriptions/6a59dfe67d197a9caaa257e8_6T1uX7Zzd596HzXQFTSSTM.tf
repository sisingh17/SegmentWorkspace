import {
  to = segment_destination_subscription.id-6a59dfe67d197a9caaa257e8_6T1uX7Zzd596HzXQFTSSTM
  id = "6a59dfe67d197a9caaa257e8:6T1uX7Zzd596HzXQFTSSTM"
}

resource "segment_destination_subscription" "id-6a59dfe67d197a9caaa257e8_6T1uX7Zzd596HzXQFTSSTM" {
  action_id            = "vE7Gf9yobj2gTuMBhwmg7g"
  destination_id       = "6a59dfe67d197a9caaa257e8"
  enabled              = true
  model_id             = null
  name                 = "Order Completed Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    batch_size            = 75
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
    products = {
      "@path" = "$.properties.products"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "event = \"Order Completed\""
}