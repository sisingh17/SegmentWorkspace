import {
  to = segment_destination.id-6a340547095f18585d2e11c7
  id = "6a340547095f18585d2e11c7"
}

resource "segment_destination" "id-6a340547095f18585d2e11c7" {
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
  source_id = "csDfmZ7LdFdHnFMVyFWbHX"
}