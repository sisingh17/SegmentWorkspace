import {
  to = segment_destination.id-6686ae06c8dc079b6369562c
  id = "6686ae06c8dc079b6369562c"
}

resource "segment_destination" "id-6686ae06c8dc079b6369562c" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "60f9d0d048950c356be2e4da"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Braze Cloud Mode (Actions)"
  settings = jsonencode({
    api_key = "••••••••••5148"
    app_id  = "58d43144-34c0-4b60-a724-1f32eeadb455"
    dynamicAuthSettings = {
      configId = "6686ae06c8dc079b6369562c"
    }
    endpoint = "https://rest.iad-03.braze.com"
  })
  source_id = "csDfmZ7LdFdHnFMVyFWbHX"
}