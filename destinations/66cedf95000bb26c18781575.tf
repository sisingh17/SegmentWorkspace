import {
  to = segment_destination.id-66cedf95000bb26c18781575
  id = "66cedf95000bb26c18781575"
}

resource "segment_destination" "id-66cedf95000bb26c18781575" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "639c2dbb1309fdcad13951b6"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name      = "RETL_Profiles"
  settings  = jsonencode({})
  source_id = "6PMPY3rtmgizcWXYW7im4g"
}