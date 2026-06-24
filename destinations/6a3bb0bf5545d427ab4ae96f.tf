import {
  to = segment_destination.id-6a3bb0bf5545d427ab4ae96f
  id = "6a3bb0bf5545d427ab4ae96f"
}

resource "segment_destination" "id-6a3bb0bf5545d427ab4ae96f" {
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
    oneSignalAppId      = "b1af2d84-6dfd-4fd3-af8c-646b4773900c"
    oneSignalRestApiKey = ""
  })
  source_id = "csDfmZ7LdFdHnFMVyFWbHX"
}