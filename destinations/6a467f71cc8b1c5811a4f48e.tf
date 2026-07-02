import {
  to = segment_destination.id-6a467f71cc8b1c5811a4f48e
  id = "6a467f71cc8b1c5811a4f48e"
}

resource "segment_destination" "id-6a467f71cc8b1c5811a4f48e" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "6a467f398821c242726df2d4"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Vero Destination Function (Simran Internal)"
  settings = jsonencode({
    veroAuthToken = "••••••••••OWQz"
  })
  source_id = "hWwGoDVBrvVXXEcSMAqJSX"
}