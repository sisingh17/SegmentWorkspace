import {
  to = segment_destination.id-6a4645eece2ffc60348177bc
  id = "6a4645eece2ffc60348177bc"
}

resource "segment_destination" "id-6a4645eece2ffc60348177bc" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "6a3bd87f767dfdb0ac0ab451"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Vero Test Function (Simran Internal)"
  settings = jsonencode({
    segmentAccessToken = ""
    segmentSpaceId     = ""
    veroAuthToken      = ""
  })
  source_id = "hWwGoDVBrvVXXEcSMAqJSX"
}