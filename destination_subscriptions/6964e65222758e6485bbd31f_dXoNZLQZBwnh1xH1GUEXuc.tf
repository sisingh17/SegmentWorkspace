import {
  to = segment_destination_subscription.id-6964e65222758e6485bbd31f_dXoNZLQZBwnh1xH1GUEXuc
  id = "6964e65222758e6485bbd31f:dXoNZLQZBwnh1xH1GUEXuc"
}

resource "segment_destination_subscription" "id-6964e65222758e6485bbd31f_dXoNZLQZBwnh1xH1GUEXuc" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "6964e65222758e6485bbd31f"
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