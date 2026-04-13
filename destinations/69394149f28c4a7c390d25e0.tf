import {
  to = segment_destination.id-69394149f28c4a7c390d25e0
  id = "69394149f28c4a7c390d25e0"
}

resource "segment_destination" "id-69394149f28c4a7c390d25e0" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "614a3c7d791c91c41bae7599"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Test Relay"
  settings = jsonencode({
    dynamicAuthSettings = {
      configId = "69394149f28c4a7c390d25e0"
      oauth = {
        type = "noAuth"
      }
    }
    sharedSecret = ""
  })
  source_id = "8MT9TFAJzDfUxTat4GhnxC"
}