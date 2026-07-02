import {
  to = segment_destination.id-6a46287e634f47a0e50a44ed
  id = "6a46287e634f47a0e50a44ed"
}

resource "segment_destination" "id-6a46287e634f47a0e50a44ed" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "5a6b50f1c900fa00011858fd"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Google Ads Remarketing Lists (2)"
  settings = jsonencode({
    account             = "2313397280"
    accountResourceName = "customers/2313397280/customerClients/2313397280"
    adPersonalization   = ""
    adUserData          = ""
    appId               = ""
  })
  source_id = "hWwGoDVBrvVXXEcSMAqJSX"
}