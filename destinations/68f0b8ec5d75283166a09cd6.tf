import {
  to = segment_destination.id-68f0b8ec5d75283166a09cd6
  id = "68f0b8ec5d75283166a09cd6"
}

resource "segment_destination" "id-68f0b8ec5d75283166a09cd6" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "5a6b50f1c900fa00011858fd"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Google Ads Remarketing Lists"
  settings = jsonencode({
    account           = ""
    adPersonalization = ""
    adUserData        = ""
    appId             = ""
  })
  source_id = "mGfJH44XzwfN7eHA3NdiDf"
}