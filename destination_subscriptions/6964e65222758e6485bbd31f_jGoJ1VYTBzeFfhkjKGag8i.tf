import {
  to = segment_destination_subscription.id-6964e65222758e6485bbd31f_jGoJ1VYTBzeFfhkjKGag8i
  id = "6964e65222758e6485bbd31f:jGoJ1VYTBzeFfhkjKGag8i"
}

resource "segment_destination_subscription" "id-6964e65222758e6485bbd31f_jGoJ1VYTBzeFfhkjKGag8i" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "6964e65222758e6485bbd31f"
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