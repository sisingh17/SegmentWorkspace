import {
  to = segment_destination.id-6909e84856b8ab698f4c9016
  id = "6909e84856b8ab698f4c9016"
}

resource "segment_destination" "id-6909e84856b8ab698f4c9016" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "54521fd925e721e32a72eee0"
    partner_owned     = false
    region_endpoints  = ["EU", "US"]
    supported_regions = null
  }
  name = "New Relic Test"
  settings = jsonencode({
    accountId        = ""
    defaultEventType = ""
    events           = {}
    insertKey        = ""
    region           = "EU"
    sendContext      = false
    sendIds          = false
  })
  source_id = "8MT9TFAJzDfUxTat4GhnxC"
}