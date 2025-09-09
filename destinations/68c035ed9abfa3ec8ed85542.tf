import {
  to = segment_destination.id-68c035ed9abfa3ec8ed85542
  id = "68c035ed9abfa3ec8ed85542"
}

resource "segment_destination" "id-68c035ed9abfa3ec8ed85542" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "54521fd725e721e32a72eec6"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Intercom"
  settings = jsonencode({
    activator          = "#IntercomDefaultWidget"
    apiBase            = ""
    apiKey             = ""
    appId              = ""
    collectContext     = false
    mobileApiKey       = ""
    richLinkProperties = []
  })
  source_id = "csDfmZ7LdFdHnFMVyFWbHX"
}