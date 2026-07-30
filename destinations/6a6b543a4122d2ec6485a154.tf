import {
  to = segment_destination.id-6a6b543a4122d2ec6485a154
  id = "6a6b543a4122d2ec6485a154"
}

resource "segment_destination" "id-6a6b543a4122d2ec6485a154" {
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
  source_id = "kaXUTfhJT5J2NqHvd5JGar"
}