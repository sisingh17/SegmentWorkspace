import {
  to = segment_destination.id-668e7746e82b27d599f3f29a
  id = "668e7746e82b27d599f3f29a"
}

resource "segment_destination" "id-668e7746e82b27d599f3f29a" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "639c2dbb1309fdcad13951b6"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name      = "SegmentProfileRETL"
  settings  = jsonencode({})
  source_id = "tXQ219y6HUBJxpSRshjLrA"
}