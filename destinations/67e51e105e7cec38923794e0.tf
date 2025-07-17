import {
  to = segment_destination.id-67e51e105e7cec38923794e0
  id = "67e51e105e7cec38923794e0"
}

resource "segment_destination" "id-67e51e105e7cec38923794e0" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "60f9d0d048950c356be2e4da"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Braze Cloud Mode for Linked Events Gen"
  settings = jsonencode({
    api_key = "••••••••••5148"
    app_id  = "82385319-73a5-422b-8efe-7201782e29c6"
    dynamicAuthSettings = {
      configId = "67e51e105e7cec38923794e0"
    }
    endpoint = "https://rest.iad-03.braze.com"
  })
  source_id = "8MT9TFAJzDfUxTat4GhnxC"
}