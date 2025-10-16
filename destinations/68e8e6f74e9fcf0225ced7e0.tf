import {
  to = segment_destination.id-68e8e6f74e9fcf0225ced7e0
  id = "68e8e6f74e9fcf0225ced7e0"
}

resource "segment_destination" "id-68e8e6f74e9fcf0225ced7e0" {
  enabled = true
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "60ae8b97dcb6cc52d5d0d5ab"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Google Ads Conversions"
  settings = jsonencode({
    conversionTrackingId = "16586692456"
    customerId           = "1747369994"
    dynamicAuthSettings = {
      configId = "68e8e6f74e9fcf0225ced7e0"
      oauth = {
        type = "noAuth"
      }
    }
  })
  source_id = "mGfJH44XzwfN7eHA3NdiDf"
}