import {
  to = segment_destination.id-67b6fec7a888202d609f16fb
  id = "67b6fec7a888202d609f16fb"
}

resource "segment_destination" "id-67b6fec7a888202d609f16fb" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "5a6b50f1c900fa00011858fd"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Twilio Test(MCC Account)"
  settings = jsonencode({
    account             = "2313397280"
    accountResourceName = "customers/2313397280/customerClients/2313397280"
    adPersonalization   = ""
    adUserData          = ""
    appId               = ""
  })
  source_id = "csDfmZ7LdFdHnFMVyFWbHX"
}