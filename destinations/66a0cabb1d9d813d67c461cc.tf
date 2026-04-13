import {
  to = segment_destination.id-66a0cabb1d9d813d67c461cc
  id = "66a0cabb1d9d813d67c461cc"
}

resource "segment_destination" "id-66a0cabb1d9d813d67c461cc" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "63d2e550fb90f1632ed8820a"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name      = "TikTok Audiences"
  settings  = jsonencode({})
  source_id = "csDfmZ7LdFdHnFMVyFWbHX"
}