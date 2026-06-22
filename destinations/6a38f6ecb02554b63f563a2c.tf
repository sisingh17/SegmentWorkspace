import {
  to = segment_destination.id-6a38f6ecb02554b63f563a2c
  id = "6a38f6ecb02554b63f563a2c"
}

resource "segment_destination" "id-6a38f6ecb02554b63f563a2c" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "631a6f32946dd8197e9cab66"
    partner_owned     = true
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "SendGrid"
  settings = jsonencode({
    endpoint       = "https://api.sendgrid.com"
    sendGridApiKey = ""
  })
  source_id = "mGfJH44XzwfN7eHA3NdiDf"
}