import {
  to = segment_destination.id-67d9431b4d1fdfb4a6988d23
  id = "67d9431b4d1fdfb4a6988d23"
}

resource "segment_destination" "id-67d9431b4d1fdfb4a6988d23" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "63872c01c0c112b9b4d75412"
    partner_owned     = false
    region_endpoints  = ["EU", "US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Braze Cohorts"
  settings = jsonencode({
    client_secret = "••••••••••f61b"
    dynamicAuthSettings = {
      configId = "67d9431b4d1fdfb4a6988d23"
    }
    endpoint = "https://rest.iad-03.braze.com"
  })
  source_id = "csDfmZ7LdFdHnFMVyFWbHX"
}