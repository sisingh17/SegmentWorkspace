import {
  to = segment_destination.id-687637df7d74648397fb35c6
  id = "687637df7d74648397fb35c6"
}

resource "segment_destination" "id-687637df7d74648397fb35c6" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "5f7dd78fe27ce7ff2b8bfa37"
    partner_owned     = true
    region_endpoints  = ["EU", "US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "CustomerIO_US_Acc"
  settings = jsonencode({
    accountRegion = "US 🇺🇸"
    apiKey        = "••••••••••2d63"
    dynamicAuthSettings = {
      configId = "687637df7d74648397fb35c6"
      oauth = {
        type = "noAuth"
      }
    }
    siteId = "••••••••••133e"
  })
  source_id = "vDJUxF73GgzoCHzNS5MdaG"
}