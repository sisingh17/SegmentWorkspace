import {
  to = segment_destination.id-68b84e987bb7c7f06fe232b6
  id = "68b84e987bb7c7f06fe232b6"
}

resource "segment_destination" "id-68b84e987bb7c7f06fe232b6" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "54521fd525e721e32a72ee8f"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "AppsFlyer1"
  settings = jsonencode({
    androidAppID         = ""
    appleAppID           = ""
    appsFlyerDevKey      = ""
    appsFlyerS2SToken    = ""
    canOmitAppsFlyerId   = false
    fallbackToIdfv       = false
    httpFallback         = false
    rokuAppID            = ""
    trackAttributionData = false
    useApiV3             = false
  })
  source_id = "8MT9TFAJzDfUxTat4GhnxC"
}