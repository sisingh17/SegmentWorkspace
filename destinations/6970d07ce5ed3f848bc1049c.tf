import {
  to = segment_destination.id-6970d07ce5ed3f848bc1049c
  id = "6970d07ce5ed3f848bc1049c"
}

resource "segment_destination" "id-6970d07ce5ed3f848bc1049c" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "54521fd625e721e32a72eeb9"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "GTM Consent Testing"
  settings = jsonencode({
    containerId           = ""
    environment           = ""
    trackAllPages         = false
    trackCategorizedPages = false
    trackNamedPages       = false
  })
  source_id = "77j7xUNGpD54pACMepDzTB"
}