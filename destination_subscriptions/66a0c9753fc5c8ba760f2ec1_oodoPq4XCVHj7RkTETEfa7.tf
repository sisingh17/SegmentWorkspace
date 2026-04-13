import {
  to = segment_destination_subscription.id-66a0c9753fc5c8ba760f2ec1_oodoPq4XCVHj7RkTETEfa7
  id = "66a0c9753fc5c8ba760f2ec1:oodoPq4XCVHj7RkTETEfa7"
}

resource "segment_destination_subscription" "id-66a0c9753fc5c8ba760f2ec1_oodoPq4XCVHj7RkTETEfa7" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "66a0c9753fc5c8ba760f2ec1"
  enabled              = true
  model_id             = null
  name                 = "Audience Webhook"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    data = {
      "@path" = "$."
    }
    method = "POST"
    url    = "https://webhook.site/e9e96e14-38e0-40bb-be9a-adb08b5866df"
  })
  trigger = "event = \"Audience Entered\" or event = \"Audience Exited\""
}