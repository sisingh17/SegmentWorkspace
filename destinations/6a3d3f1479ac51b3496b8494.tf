import {
  to = segment_destination.id-6a3d3f1479ac51b3496b8494
  id = "6a3d3f1479ac51b3496b8494"
}

resource "segment_destination" "id-6a3d3f1479ac51b3496b8494" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "6a3b9fa84096face0430f6ed"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "One Signal Test (Simran Internal)"
  settings = jsonencode({
    oneSignalAppId       = ""
    oneSignalRestApiKey  = ""
    usedAsADestinationTo = ""
  })
  source_id = "mGfJH44XzwfN7eHA3NdiDf"
}