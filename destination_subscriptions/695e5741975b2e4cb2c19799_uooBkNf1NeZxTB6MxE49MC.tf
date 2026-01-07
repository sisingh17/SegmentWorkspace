import {
  to = segment_destination_subscription.id-695e5741975b2e4cb2c19799_uooBkNf1NeZxTB6MxE49MC
  id = "695e5741975b2e4cb2c19799:uooBkNf1NeZxTB6MxE49MC"
}

resource "segment_destination_subscription" "id-695e5741975b2e4cb2c19799_uooBkNf1NeZxTB6MxE49MC" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "695e5741975b2e4cb2c19799"
  enabled              = false
  model_id             = null
  name                 = "Example Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    data = {
      "@path" = "$."
    }
    method = "POST"
    url    = "https://webhook-test.com/7e931185c8ae6be9c55ec1f66c69a1b4"
  })
  trigger = "event = \"Example Event\""
}