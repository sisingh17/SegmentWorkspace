import {
  to = segment_destination_subscription.id-695e5741975b2e4cb2c19799_teTawPtdZANopSMfSmLcA8
  id = "695e5741975b2e4cb2c19799:teTawPtdZANopSMfSmLcA8"
}

resource "segment_destination_subscription" "id-695e5741975b2e4cb2c19799_teTawPtdZANopSMfSmLcA8" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "695e5741975b2e4cb2c19799"
  enabled              = true
  model_id             = null
  name                 = "Send Tracks"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    data = {
      "@path" = "$."
    }
    method = "POST"
    url    = "https://webhook.site/a16472d5-cd3f-43da-9b6d-6b83f7eb6c0f"
  })
  trigger = "type = \"track\""
}