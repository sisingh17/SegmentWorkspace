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
    url    = "https://webhook.site/2a09f3e3-f084-473b-bb20-05e19a37a21b"
  })
  trigger = "type = \"track\""
}