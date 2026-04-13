import {
  to = segment_destination.id-692587106e1a89cee4b82e9e
  id = "692587106e1a89cee4b82e9e"
}

resource "segment_destination" "id-692587106e1a89cee4b82e9e" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "5850d8b680412f644ff55df2"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = null
  }
  name = "Test US_EU"
  settings = jsonencode({
    endpoint   = "https://api.segment.io"
    repeatKeys = ["iEAGFmMBEC8ekUWiGB9QPyk1eMr7JM3d", "2xjMSVOq0KlLdDlyHFF29XPgHPI2rf3m", "59vlXBcTD6grE5EVuQPOz76orjZDePlK"]
  })
  source_id = "8MT9TFAJzDfUxTat4GhnxC"
}